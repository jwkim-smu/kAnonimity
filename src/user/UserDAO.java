package user;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


 
public class UserDAO {
    
    private Connection conn;            // DB에 접근하는 객체
    private PreparedStatement pstmt;    // 
    private ResultSet rs;                // DB data를 담을 수 있는 객체  (Ctrl + shift + 'o') -> auto import
    
    public UserDAO(){
        try {
            String dbURL = "jdbc:mysql://localhost:3306/accountinfo";
            String dbID = "root";
            String dbPassword = "root";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    public int join(UserDTO userDTO) {
    	StringBuffer sb = new StringBuffer();
 
    	String SQL = "insert into user(userID, userPW) values(";
    	
    	sb.append(SQL);
    	sb.append("'");
    	sb.append(userDTO.getUserID());
    	sb.append("'");
    	sb.append(",");
    	sb.append("'");
    	sb.append(userDTO.getUserPW());
    	sb.append("'");
    	sb.append(")");
    	System.out.println(sb);
    	try {
    		Connection conn = DatabaseUtil.getConnection();
    		pstmt = conn.prepareStatement(sb.toString());
//    		pstmt.setString(1, user.getUserID());
//    		pstmt.setString(2, user.getUserPW());
    		return pstmt.executeUpdate(sb.toString());
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return -1;
    }
    
    public int login(String userID, String userPW) {
        String SQL = "SELECT userPW FROM user WHERE userID = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            rs = pstmt.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals(userPW))
                    return 1;    // 로그인 성공
                else
                    return 0; // 비밀번호 불일치
            }
            return -1; // ID가 없음
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2; // DB 오류
        
    }
 
}