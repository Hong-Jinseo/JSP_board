package board.member.db;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDao {
	
	public static final int MEMBER_NONEXISTENT = 0;
	public static final int MEMBER_EXISTENT = 1;
	public static final int MEMBER_JOIN_FAIL = 0;
	public static final int MEMBER_JOIN_SUCCESS = 1;
	public static final int MEMBER_LOGIN_PW_NOT_GOOD = 0;
	public static final int MEMBER_LOGIN_SUCCESS = 1;
	public static final int MEMBER_LOGIN_FAIL = -1;
 
	private static MemberDao instance = new MemberDao();
	
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
    String db_id = "scott";
    String db_pw = "tiger";
	
	private MemberDao() {
	}
	
	public static MemberDao getInstance() {
		return instance;
	}
	
	
	public int insertMember(MemberDto dto) {
		int ri = 0;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		String query = "insert into member values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			connection = DriverManager.getConnection(db_url, db_id, db_pw);
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getNickname());
			pstmt.setString(5, dto.getPhone1());
			pstmt.setString(6, dto.getPhone2());
			pstmt.setString(7, dto.getPhone3());
			pstmt.setString(8, dto.getEmail());
			pstmt.setString(9, dto.getGender());
			pstmt.setString(10, dto.getBirthY());
			pstmt.setString(11, dto.getBirthM());
			pstmt.setString(12, dto.getBirthD());
			pstmt.setTimestamp(13, dto.getrDate());
			
			pstmt.executeUpdate();
			ri = MemberDao.MEMBER_JOIN_SUCCESS;
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt != null) pstmt.close();
				if(connection != null) connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return ri;
	}
	
	
	public int confirmId(String id) {
		int ri = 0;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "select id from member where id = ?";
		
		try {
			connection = DriverManager.getConnection(db_url, db_id, db_pw);
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			if(set.next()) 
				ri = MemberDao.MEMBER_EXISTENT;
			else
				ri = MemberDao.MEMBER_NONEXISTENT;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				set.close();
				pstmt.close();
				connection.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return ri;
	}
	
	
	public int userCheck(String id, String pw) {
		int ri = 0;
		String dbPw;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "select pw from member where id = ?";
		
		try {
			connection = DriverManager.getConnection(db_url, db_id, db_pw);
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			
			if(set.next()) {
				dbPw = set.getString("pw");
				if(dbPw.equals(pw))
					ri = MemberDao.MEMBER_LOGIN_SUCCESS;
				else
					ri = MemberDao.MEMBER_LOGIN_PW_NOT_GOOD;
			}
			else
				ri = MemberDao.MEMBER_LOGIN_FAIL;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				set.close();
				pstmt.close();
				connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return ri;
	}
	
	
	public MemberDto getMember(String id) {
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "select * from member where id = ?";
		MemberDto dto = null;
		
		try {
			connection = DriverManager.getConnection(db_url, db_id, db_pw);
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			
			if(set.next()) {
				dto = new MemberDto();
				dto.setId(set.getString("id"));
				dto.setPw(set.getString("pw"));
				dto.setName(set.getString("name"));
				dto.setNickname(set.getString("nickname"));
				dto.setPhone1(set.getString("phone1"));
				dto.setPhone2(set.getString("phone2"));
				dto.setPhone3(set.getString("phone3"));
				dto.setEmail(set.getString("email"));
				dto.setGender(set.getString("gender"));
				dto.setBirthY(set.getString("birthY"));
				dto.setBirthM(set.getString("birthM"));
				dto.setBirthD(set.getString("birthD"));
				dto.setrDate(set.getTimestamp("rDate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				set.close();
				pstmt.close();
				connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}
	
	
	public int updateMember(MemberDto dto) {
		int ri = 0;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		String query = "update member set nickname=?, phone1=?, phone2=?, phone3=?, email=?, birthY=?, birthM=?, birthD=? where id=?";
		
		try {
			connection = DriverManager.getConnection(db_url, db_id, db_pw);
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, dto.getNickname());
			pstmt.setString(2, dto.getPhone1());
			pstmt.setString(3, dto.getPhone2());
			pstmt.setString(4, dto.getPhone3());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getBirthY());
			pstmt.setString(7, dto.getBirthM());
			pstmt.setString(8, dto.getBirthD());
			pstmt.setString(9, dto.getId());
			ri = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				connection.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return ri;
	}
}