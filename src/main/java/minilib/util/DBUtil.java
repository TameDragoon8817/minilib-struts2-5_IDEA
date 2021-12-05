package minilib.util;
import java.sql.*;

public class DBUtil {
	//数据库的用户信息   //对应数据库安装时设置的用户名和密码
	private static String rootname="root";  	
	private static String rootpass="147895";
	//MySQL的驱动程序
	private static String driver="com.mysql.cj.jdbc.Driver";
	//数据库的位置
	//private static String url="jdbc:mysql://localhost:3306/book";
     private static String url="jdbc:mysql://localhost:3306/book?useSSL=true&serverTimezone=GMT";
	//创建与数据库连接
	public static Connection getConnection()throws InstantiationException,IllegalAccessException,ClassNotFoundException,SQLException{
		Class.forName(driver).newInstance();
		return DriverManager.getConnection(url, rootname, rootpass);
	}
}