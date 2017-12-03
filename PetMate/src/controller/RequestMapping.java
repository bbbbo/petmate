package controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.member.*;
public class RequestMapping {
    private static final Logger logger = LoggerFactory.getLogger(DispatcherServlet.class);
    
    // �� ��û uri�� ���� controller ��ü�� ������ HashMap ����
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
    	// �� uri�� �����Ǵ� controller ��ü�� ���� �� ����
    	
    	mappings.put("/member/main", new ForwardController("/member/main.jsp"));
    	mappings.put("/member/login",new LoginController());
        mappings.put("/member/register/form", new ForwardController("/member/registerForm.jsp"));
        mappings.put("/member/list", new ListMemberController());  
        mappings.put("/member/register", new RegisterMemberController());
        mappings.put("/member/register/pet", new ForwardController("/member/registerPet.jsp"));
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
