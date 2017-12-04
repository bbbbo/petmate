package controller.pet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import controller.member.UserSessionUtils;
import model.PetDTO;
import model.dao.PetDAO;

public class RegisterPetController implements Controller {
	private static final Logger log = LoggerFactory.getLogger(RegisterPetController.class);
	private PetDAO petDAO = new PetDAO();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//현재 접속한 유저 아이디
		String curUserId = UserSessionUtils.getUserFromSession(request.getSession());		
		
		PetDTO pet = new PetDTO(
				curUserId,
				1,
				request.getParameter("kind_ID"),
				request.getParameter("pet_age"),
				request.getParameter("pet_gender"),
				request.getParameter("pet_name"));
		
		log.debug("Create Pet : {}", pet);
		
//		try{
			petDAO.create(pet);
			return "redirect:/main.jsp"; 	//main page로 넘어가기
//		}
		
		
	}
	  
}
