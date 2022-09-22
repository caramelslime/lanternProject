package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import model.Member;
import service.CommandProcess;

public class JoinResult implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		/* String mail_chk = request.getParameter("mail_chk"); */
		
		Member member = new Member();
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setPhone(phone);
		member.setEmail(email);
		
		MemberDao md = MemberDao.getInstance();
		Member m1 = md.select(id);
		int result = 0;
		if(m1 == null) result=md.insert(member);
		else result = -1;
		request.setAttribute("result", result);
		return "joinResult";
	}

}
