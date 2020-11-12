package svc;

import java.sql.Connection;

import dao.BoardDAO;
import db.JdbcUtil;
import vo.BoardBean;

public class BoardWriteProService {
	public boolean registArticle(BoardBean boardBean) {
		System.out.println("BoardWriteProService - registArticle");
		boolean isWriteSuccess = false;
		
		Connection con = JdbcUtil.getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int insertCount = boardDAO.insertArticle(boardBean);
		if(insertCount > 0	) {
			JdbcUtil.commit(con);
			isWriteSuccess = true;
		}else {
			JdbcUtil.rollback(con);
		}
		JdbcUtil.close(con);
		return isWriteSuccess;
	}
}
