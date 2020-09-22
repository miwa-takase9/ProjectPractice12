/**
 * 教室予約の本体となるクラス
 * @author 高瀬美和
 */
import java.util.*;
import java.sql.*;

public class ClassroomReservation {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

        AbstractUpdateExecuter e1 = new AppClassReservation();
        AbstractExecuter e2 = new ConfOfPermission();
		AbstractExecuter e3 = new Printallclassroom();
		AbstractExecuter e4 = new UnconReservation();
		AbstractUpdateExecuter e5 = new ChangeApproval1();
		AbstractUpdateExecuter e6 = new ChangeApproval2();
		AbstractExecuter e7 = new Inform_listup();
		AbstractUpdateExecuter e8 = new Inform_listup2();

		System.out.println("=== Classroom Reservation System ===");
		System.out.println("Select the menu: ");
        System.out.println("1: Student/Teacher/External");
		System.out.println("2: Adminnistrator");
		System.out.println("0: Exit");
		System.out.println("Which menu?: ");

		String line = "";
		do {
			line = scanner.nextLine();		
			switch(line) {
				case "1":
					System.out.println("=== Welcome User ===");
					System.out.println("Select the menu: ");
					System.out.println("1: Apply classroom reservation");
					System.out.println("2: Check if approved ");
					System.out.println("3: Search classroom imformation");
					System.out.println("0: Exit");
					System.out.println("Which menu?: ");

					do{
						line = scanner.nextLine();
						switch(line){
							case "1":
								e1.queryAndShow();
								break;

							case "2":
								e2.queryAndShow();
								break;

							case "3":
								e3.queryAndShow();
								break;

							case "0":
								break;
						
						default:
							System.out.println("Incorrect number");
						}
					} while ( !line.equals("0") );

				case "2":
					System.out.println("=== Welcome Administrator ===");
					System.out.println("Select the menu: ");
					System.out.println("1: View contacts");
					System.out.println("2: Approve the application");
					System.out.println("0: Exit");
					System.out.println("Which menu?: ");
					
					do{
						line = scanner.nextLine();
						switch(line){
							case "1":
								e7.queryAndShow();
								e8.queryAndShow();
								break;

							case "2":
								e4.queryAndShow();
			
								System.out.println("Select the menu: ");
								System.out.println("1: Approve the application");
								System.out.println("2: Reject the application");
								System.out.println("0: Exit");
								System.out.println("Which menu?: ");
								do {
									line = scanner.nextLine();		
									switch(line) {
										case "1":
											e5.queryAndShow();
											break;
										
										case "2":
											e6.queryAndShow();
											break;
										
										case "0":
											break;
									
									default:
										System.out.println("Incorrect number");
									}
								} while ( !line.equals("0") );

							case "0":
								break;
								
						default:
							System.out.println("Incorrect number");
						}
					} while ( !line.equals("0") );
	
				case "0":
					break;
			default:
				System.out.println("Incorrect number");
			}
		} while ( !line.equals("0") );
	}
}
