package controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.adopt.*;
import controller.hospital.searchHospitalController;
import controller.member.*;
import controller.pet.*;

public class RequestMapping {
    private static final Logger logger = LoggerFactory.getLogger(DispatcherServlet.class);
    
    // 각 요청 uri에 대한 controller 객체를 저장할 HashMap 생성
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
    	// 각 uri에 대응되는 controller 객체를 생성 및 저장
    	
    	mappings.put("/member/login",new LoginController());      //[succ] main, [fail] loginForm
        mappings.put("/member/registerMember", new RegisterMemberController());     //[succ] loginForm, [fail]registerFrom
        mappings.put("/main/form", new ForwardController("/main.jsp"));       
        mappings.put("/member/registerMember/form", new ForwardController("/member/registerForm.jsp"));          
        mappings.put("/member/registerSucc/form", new ForwardController("/member/loginForm.jsp"));   
        mappings.put("/member/registerPet/form", new ForwardController("/member/registerPet.jsp"));
        mappings.put("/member/registerPet", new RegisterPetController());	//pet 등록
        mappings.put("/member/registerAdopt/form", new ListAdoptController());	//입양 리스트
        
        mappings.put("/member/registerHospital/form", new ForwardController("/hospital/searchHospital.jsp"));	//병원 추가
        mappings.put("/member/hospital", new ForwardController("/hospital/searchHospital_list.jsp")); 
        mappings.put("/member/HospitalList", new searchHospitalController());	//병원 검색
        
//        mappings.put("/adopt/addAdopt/form" , new ForwardController("/adopt/AddAdopt.jsp"));
//        mappings.put("/adopt/listAdopt", new RegisterAdoptController());
        
        
        mappings.put("/adopt/listAdopt/form", new ForwardController("/adopt/listAdopt.jsp"));	//입양 리스트 페이지로 돌아가기
        mappings.put("/adopt/viewAdopt", new ViewAdoptController());	//입양 상세보기
        
        
//        mappings.put("/user/logout", new LogoutController());
//        mappings.put("/user/view", new ViewUserController());
//        mappings.put("/user/update", new UpdateUserController());
//        mappings.put("/user/update/form", new UpdateUserFormController());
//        mappings.put("/user/delete", new DeleteUserController());
        logger.info("Initialized Request Mapping!");
    }

    public Controller findController(String uri) {	
    	// 주어진 uri에 대응되는 controller 객체를 찾아 반환
        return mappings.get(uri);
    }
}
