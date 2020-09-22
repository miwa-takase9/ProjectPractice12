/**
 * 申請の許可をするというユースケースの中の基本系列の１つである、”未確認の申請の一覧を表示する”に対して責任を持つクラス
 * @author 高瀬美和
 */

import java.util.*;
import java.sql.*;

public class UnconReservation extends AbstractExecuter {
	private Scanner scanner = new Scanner(System.in);
	
	public String makeQuery() {
		String query ="SELECT * "
			+ "FROM "
			+ "reservation "
			+ "WHERE "
			+ "approval=0;";
		return query;
	}

	public void showResult(ResultSet r) throws SQLException {
		while(r.next()) {
            String name = r.getString("classroom_name");
            String tel = r.getString("telephone_number");
			String purpose = r.getString("content");
			String date = r.getString("date");
			int time = r.getInt("time");
			int lighttime = r.getInt("lighting_time");
			int fee = r.getInt("usage_fee");
			int carry = r.getInt("carry");
			int car = r.getInt("car");
			int approval = r.getInt("approval");
			int contact = r.getInt("contact");
			System.out.println(name + "\t" +tel + "\t" + purpose + "\t" + date + "\t" + time + "\t" + lighttime + "\t" + fee + "\t" + carry + "\t" + car + "\t" + approval + "\t" + contact);
		}
	}
}
