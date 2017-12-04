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
    
    // �� ��û uri�� ���� controller ��ü�� ������ HashMap ����
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
    	// �� uri�� �����Ǵ� controller ��ü�� ���� �� ����
    	
    	mappings.put("/member/login",new LoginController());      //[succ] main, [fail] loginForm
        mappings.put("/member/registerMember", new RegisterMemberController());     //[succ] loginForm, [fail]registerFrom
        mappings.put("/main/form", new ForwardController("/main.jsp"));       
        mappings.put("/member/registerMember/form", new ForwardController("/member/registerForm.jsp"));          
        mappings.put("/member/registerSucc/form", new ForwardController("/member/loginForm.jsp"));   
        mappings.put("/member/registerPet/form", new ForwardController("/member/registerPet.jsp"));
        mappings.put("/member/registerPet", new RegisterPetController());	//pet ���
        mappings.put("/member/registerAdopt/form", new ListAdoptController());	//�Ծ� ����Ʈ
        
        mappings.put("/member/registerHospital/form", new ForwardController("/hospital/searchHospital.jsp"));	//���� �߰�
        mappings.put("/member/hospital", new ForwardController("/hospital/searchHospital_list.jsp")); 
        mappings.put("/member/HospitalList", new searchHospitalController());	//���� �˻�
        
//        mappings.put("/adopt/addAdopt/form" , new ForwardController("/adopt/AddAdopt.jsp"));
//        mappings.put("/adopt/listAdopt", new RegisterAdoptController());
        
        
        mappings.put("/adopt/listAdopt/form", new ForwardController("/adopt/listAdopt.jsp"));	//�Ծ� ����Ʈ �������� ���ư���
        mappings.put("/adopt/viewAdopt", new ViewAdoptController());	//�Ծ� �󼼺���
        
        
//        mappings.put("/user/logout", new LogoutController());
//        mappings.put("/user/view", new ViewUserController());
//        mappings.put("/user/update", new UpdateUserController());
//        mappings.put("/user/update/form", new UpdateUserFormController());
//        mappings.put("/user/delete", new DeleteUserController());
        logger.info("Initialized Request Mapping!");
    }

    public Controller findController(String uri) {	
    	// �־��� uri�� �����Ǵ� controller ��ü�� ã�� ��ȯ
        return mappings.get(uri);
    }
}
