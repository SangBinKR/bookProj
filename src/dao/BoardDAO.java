package dao;

import java.sql.Connection;

import vo.BoardBean;

public class BoardDAO {
	private BoardDAO(){}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	Connection con;
	public void setConnection(Connection con) {
		this.con = con;
	}
	public int insertArticle(BoardBean boardBean) {
		System.out.println("BoardDAO - insert Article()");
		int insertCount = 0;
		return insertCount;
	}
}
