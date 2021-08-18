package board.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.post.db.BDao;
import board.post.db.BDto;

public class BListCommand implements BCommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bId = request.getParameter("bId");
		
		BDao dao = new BDao();
		ArrayList<BDto> dtos = dao.list();
		
		BDao dao3 = new BDao();
		int count = dao3.countComments(bId);

		request.setAttribute("list", dtos);
		request.setAttribute("count", count);
	}
}
