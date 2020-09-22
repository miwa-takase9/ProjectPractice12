/**
 * 申請するというユースケースの中の基本系列の１つである、”利用者が申請する”に対して責任を持つクラス
 * @author Taisuke Ogawara
*/

import java.util.*;
import java.sql.*;

public class AppClassReservation extends AbstractUpdateExecuter {
	private Scanner scanner = new Scanner(System.in);
	
	public String makeQuery() {
        System.out.println("Please fill in the required information");
        System.out.println("EX) 2101");
        System.out.println("    0801112222");
        System.out.println("    基礎力学");
        System.out.println("    2020-07-20 09:00:00");
        System.out.println("    100");
        System.out.println("    0");
        System.out.println("    0");
		System.out.println("    0");
		System.out.println("    0");
        
        String query ="INSERT INTO reservation VALUE('"
			+ scanner.nextLine()
			+"','"
			+ scanner.nextLine()
			+"','"
			+ scanner.nextLine()
			+"','"
			+ scanner.nextLine()
			+"',"
			+ scanner.nextLine()
			+","
			+ scanner.nextLine()
			+","
			+ scanner.nextLine()
			+","
			+ scanner.nextLine()
			+","
			+ scanner.nextLine()
			+",0,0)"
			+ ";";

		System.out.println("Application accepted");
		return query;
	}
}
