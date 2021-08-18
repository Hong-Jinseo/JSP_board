package board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.post.db.BDao;

public class BWriteCommentCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String cBid = request.getParameter("cBoardNum");
		String bUserId = request.getParameter("cLoginId");
		String cNickname = request.getParameter("cNickname");
		String cContent = request.getParameter("cContent");
		
		BDao dao = new BDao();
		dao.writeComment(cBid, bUserId, cNickname, cContent);
	}
}