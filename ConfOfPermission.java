/**
 * 申請許可の確認というユースケースの中の基本系列の１つである、”申請許可がされているか確認する”に対して責任を持つクラス
 * @author 高瀬美和
 */

import java.util.*;
import java.sql.*;

public class ConfOfPermission extends AbstractExecuter {
	private Scanner scanner = new Scanner(System.in);
	
	public String makeQuery() {
		System.out.println("Please type a name of the room and your phone number");
		System.out.println("EX) 2101");
		System.out.println("    476832020");
		
        String r_name = scanner.nextLine();
        String tel_num = scanner.nextLine();
		String query ="SELECT approval "
			+ "FROM "
			+ "reservation "
			+ "WHERE "
			+ "reservation.classroom_name="
            + "'"+r_name+"' "
            + "AND reservation.telephone_number="
            + "'"+tel_num+"';";
		return query;
	}

	public void showResult(ResultSet r) throws SQLException {
		while(r.next()) {
			int con = r.getInt("approval");
			if(con==2) System.out.println("Sorry,Rejected");
			else if(con==0) System.out.println("Sorry,Processing");
			else System.out.println("Approved");
		}
	}
}
