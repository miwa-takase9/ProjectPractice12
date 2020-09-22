/**
 * 教室情報の確認というユースケースの中の基本系列の１つである、”全教室の情報を表示”に対して責任を持つクラス
 * @author Taisuke Ogawara
 * modified by 高瀬美和
 * データベースの名前の違いのためにshowResultの””内を自分のデータベースに合わせて変更
 */

import java.util.*;
import java.sql.*;

public class Printallclassroom extends AbstractExecuter {
	private Scanner scanner = new Scanner(System.in);
	
	public String makeQuery() {
		String query ="SELECT * "
			+ "FROM classroom "
			+ ";";
		return query;
	}

	public void showResult(ResultSet r) throws SQLException {
		while(r.next()) {
			String name = r.getString("classroom_name");
			int number = r.getInt("capacity");
			int fee = r.getInt("fare");
			String place = r.getString("location");
			int light = r.getInt("light");
			int air = r.getInt("air");
			String phonenumber = r.getString("telephone_number");
			System.out.println(name + "\t" + number + "\t" + fee + "\t" + place + "\t" + light + "\t" + air + "\t" + phonenumber);
		}
	}
}
