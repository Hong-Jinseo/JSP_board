package board.comment.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CDao {
	
	DataSource dataSource;
	
	public CDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/orcl");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void writeComment(int cBid, String cUserId, String cNickname, String cContent, Timestamp cDate) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			String query = "insert into board_comment (cId, cBid, cUserId, cNickname, cContent, cDate) values (board_comment_seq.nextval,?,?,?,?,?)";
			
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1,  cBid);
			preparedStatement.setString(2,  cUserId);
			preparedStatement.setString(3,  cNickname);
			preparedStatement.setString(4,  cContent);
			
			preparedStatement.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
	}
	
	
	public ArrayList<CDto> getAllComment(){
		
		ArrayList<CDto> dtos = new ArrayList<CDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "select cId, cBid, cUserId, cNickname, cContent, cDate from board_comment order by bId";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int cId = resultSet.getInt("cId");
				int cBid = resultSet.getInt("cBid");
				String cUserId = resultSet.getString("cUserId");
				String cNickname = resultSet.getString("cNickname");
				String cContent = resultSet.getString("cContent");
				Timestamp cDate = resultSet.getTimestamp("cDate");
				
				CDto dto = new CDto(cId, cBid, cUserId, cNickname, cContent, cDate);
				dtos.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return dtos;
	}
}
