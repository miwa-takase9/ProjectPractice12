/**
 * 申請の許可をするというユースケースの備考に書かれた動作の１つである、
 * 予約の承認状況を2に更新することに責任を持つクラス
 * @author Taisuke Ogawara
 * modified by 高瀬美和
 * ・主キーが正しいものではないと判断したためwhere節内のdateをclassroom_nameに変更
 * ・入力する際にコメントを表示させた方がわかりやすいと考え動作用のコメントを追加
 */

import java.util.*;
import java.sql.*;

public class ChangeApproval2 extends AbstractUpdateExecuter {
	private Scanner scanner = new Scanner(System.in);
	
	public String makeQuery() {
		System.out.println("Please type a name of the room and user's telephone number");
		System.out.println("EX) 2101");
		System.out.println("    80111222");
		String query ="UPDATE reservation SET approval=2 WHERE classroom_name='"
			+ scanner.nextLine()
			+"' AND telephone_number ='"
			+ scanner.nextLine()
			+ "';";
		return query;
	}

}
