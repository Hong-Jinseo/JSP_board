package board.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.comment.db.CDto;
import board.post.db.BDao;

public class BCommentCommand implements BCommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//String bId = request.getParameter("bId");
		BDao dao = new BDao();
		//ArrayList<CDto> dtos = dao.getAllComment();
		
		//request.setAttribute("comment_view", dtos);
	}
}
 