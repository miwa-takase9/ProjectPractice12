/**
 * 申請をした利用者の連絡先表示というユースケースの中の基本系列の１つである、”連絡し終えたら連絡状況を１にする”に対して責任を持つクラス
 * @author takei kazuho
 * modified by 高瀬美和
 * 私たちが想定したアプリケーションの仕様と異なるSQLが書かれているように感じたためmakeQueryのSQLを変更
 */

import java.util.*;
import java.sql.*;

public class Inform_listup2 extends AbstractUpdateExecuter {
	private Scanner scanner = new Scanner(System.in);
	
	public String makeQuery() {
		System.out.println("Type the telephone number of contact person and classroom name");
		System.out.println("EX) 801112222");
		System.out.println("    2101");
		String tel_num = scanner.nextLine();
		String r_name = scanner.nextLine();
		String query ="UPDATE reservation "
			+ "SET "
			+ "contact=1 "
			+ "WHERE "
			+ "telephone_number='"
			+ tel_num
			+ "' AND "
			+ "classroom_name='"
			+ r_name
			+ "';";
		System.out.println("Contact status update completed");
		return query;
	}


}
