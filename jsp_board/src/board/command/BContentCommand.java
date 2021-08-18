package board.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.comment.db.CDto;
import board.post.db.BDao;
import board.post.db.BDto;

public class BContentCommand implements BCommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bId = request.getParameter("bId");
		BDao dao = new BDao();
		BDto dto = dao.contentView(bId);
		
		BDao dao2 = new BDao();
		ArrayList<CDto> dtos = dao2.getAllComment("bId");
		
		request.setAttribute("content_view", dto);
		request.setAttribute("comments", dtos);
	}
}
 