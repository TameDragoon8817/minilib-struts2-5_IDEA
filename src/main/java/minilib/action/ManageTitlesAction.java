package minilib.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import minilib.Dao.ManageTitlesDao;
import minilib.vo.Title;

@SuppressWarnings("rawtypes")
public class ManageTitlesAction extends ActionSupport {
	/**
	 * 
	 */
	private Title book;

	public Title getBook() {
		return book;
	}
	public void setBook(Title book) {
		this.book = book;
	}
	private static final long serialVersionUID = 1L;
	public String addTitle() throws Exception{
		String restadd;
		ManageTitlesDao mtadd = new ManageTitlesDao();
		mtadd.saveTitle(book);
		restadd = "addbook";
		HttpServletRequest req =ServletActionContext.getRequest();
		req.setAttribute("successmessage", "成功");
		System.out.print("===add==="+ book.getTypeid() + book.getTitle());
		return restadd;
	}
	
	public String findBookType() throws Exception{
		String restType;
		ManageTitlesDao mttype = new ManageTitlesDao();
		List allTypeList = mttype.findBookType();
		HttpServletRequest request =ServletActionContext.getRequest();
		request.setAttribute("alltypelist", allTypeList);
		restType = "bookType";
		return restType;
	}
	
	public String findTitleByName() {
		System.out.print("===Query===");
		return "querybook";
	}
	public String findAllTitles() {
		ManageTitlesDao mt= new ManageTitlesDao();
		List allTiltesList = mt.findAll();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("allTiltesList", allTiltesList);
		System.out.print("-findAllTitles-");
		return "querybook";
	}
}
