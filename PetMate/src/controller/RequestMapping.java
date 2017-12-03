package controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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
        mappings.put("/member/register/pet", new RegisterPetController());

  
        
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
