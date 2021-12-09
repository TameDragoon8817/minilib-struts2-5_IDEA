package minilib.Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import minilib.util.DBUtil;
import minilib.vo.*;

public class ManageTitlesDao {
	/*public List<Title> findAll() {
		List<Title> list = new ArrayList<>();
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from t_book order by t_book.bookid";
			System.out.print("sql = "+sql);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Title title = new Title();
				title.setIsbn(rs.getString(3));
				title.setTitle(rs.getString(5));
				title.setAuthors(rs.getString(6));
				title.setPressid(rs.getString(8));
				list.add(title);
			}
			rs.close();
			pstmt.close();
			conn.close();
		}
		catch(InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return list;
	}*//*被模糊搜索替代*/

	public List<Object> FindBooksAsTitle(Title book) throws InstantiationException,IllegalAccessException,ClassNotFoundException,SQLException{
		List<Object> list = new ArrayList<>();
		Connection conn = DBUtil.getConnection();
		String strsql = "select * from t_book where t_book.title like '%"+book.getTitle()+"%' order by t_book.bookid";
		System.out.print("strsql="+strsql);
		PreparedStatement pstmt = conn.prepareStatement(strsql);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			Title title = new Title();
			title.setIsbn(rs.getString(3));
			title.setTitle(rs.getString(5));
			title.setAuthors(rs.getString(6));
			title.setPressid(rs.getString(8));
			list.add(title);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return list;
	}/*按照图书关键字模糊搜索*/

	public List<CodeBookType> findBookType() throws InstantiationException,IllegalAccessException,ClassNotFoundException,SQLException{
		List<CodeBookType> list = new ArrayList<>();
		Connection conn = DBUtil.getConnection();
		Statement stmt = conn.createStatement();
		String strsql = "select codeid,codename from code_booktype order by codeid";
		System.out.print("strsql="+strsql);
		ResultSet rs = stmt.executeQuery(strsql);
		while (rs.next()) {
			CodeBookType booktype = new CodeBookType();
			booktype.setCodeId(rs.getString(1));
			booktype.setCodeName(rs.getString(2));
			list.add(booktype);
		}
		rs.close();
		stmt.close();
		conn.close();
		return list;
	}/*从数据库查询图书类型*/
	
	public void saveTitle(Title book) throws InstantiationException,IllegalAccessException,ClassNotFoundException,SQLException{
		Connection conn = DBUtil.getConnection();
		String sql = "insert into t_book (typeid,title)"+"values('"+book.getTypeid()+"',"+"'"+book.getTitle()+"'"+")";
		System.out.print("saveTitle = "+sql);
		Statement stmt;
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
		conn.close();
	}/*将增加图书的数据写入数据库中*/


}
