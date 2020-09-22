/**
 * 申請をした利用者の連絡先表示というユースケースの中の基本系列の１つである、”利用者の連絡先リストを表示する”に対して責任を持つクラス
 * @author takei kazuho
 * modified by 高瀬美和
 * 和集合の書き方が違うのではないかと思ったためmakeQuery内を変更した
 */

import java.util.*;
import java.sql.*;

public class Inform_listup extends AbstractExecuter {
	private Scanner scanner = new Scanner(System.in);
	
	public String makeQuery() {

		String query ="SELECT reservation.telephone_number,classroom_name,content "
			+ "FROM "
			+ "reservation "
			+ "WHERE "
			+ "reservation.approval=1 "
			+ "AND "
			+ "reservation.contact=0 "
			+ "UNION "
			+ "SELECT reservation.telephone_number,classroom_name,content "
			+ "FROM reservation "
			+ "WHERE "
			+ "reservation.approval=2 "
			+ "AND "
			+ "reservation.contact=0;";
		return query;
	}

	public void showResult(ResultSet r) throws SQLException {
		System.out.println("List of reservations not contacted");
		while(r.next()) {
			String room = r.getString("classroom_name");
			String pnumber = r.getString("telephone_number");
			String purpose=r.getString("content");
			System.out.println(pnumber+":"+room+","+purpose);
		}
	}
}
