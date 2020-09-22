//基本的に以下の部分はそのまま使えるが、参照するDBの部分は変更の必要あり
import java.sql.*;

public abstract class AbstractExecuter {
	public abstract String makeQuery();
	public abstract void showResult(ResultSet r) throws SQLException;
	public final void queryAndShow() {
	    Connection conn = null;
		try {
			conn = DriverManager.getConnection(
				"jdbc:mysql://localhost/Reservation_System?useSSL=false", "root", ""
				);
			Statement st=conn.createStatement();
			String sqlString = makeQuery();
			ResultSet res=st.executeQuery(sqlString);
			showResult(res);
			
			res.close();
			st.close();
			conn.close();
		} catch (SQLException se) {
			System.out.println("SQL Error 1: " + se.toString() + " "
				+ se.getErrorCode() + " " + se.getSQLState());
		} catch (Exception e) {
			System.out.println("Error: " + e.toString() + e.getMessage());
		}
	}
}
