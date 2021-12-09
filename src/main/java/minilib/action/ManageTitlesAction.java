package minilib.action;

import com.opensymphony.xwork2.ActionSupport;
import minilib.Dao.ManageTitlesDao;
import minilib.vo.Title;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;
import java.util.List;

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
    }/*自动生成Getter和Setter*/

    private static final long serialVersionUID = 1L;

    public String addTitle() throws Exception {
        String restadd;
        ManageTitlesDao mtadd = new ManageTitlesDao();
        mtadd.saveTitle(book);
        restadd = "addbook";
        HttpServletRequest req = ServletActionContext.getRequest();
        req.setAttribute("successmessage", "成功");
        System.out.print("===add===" + book.getTypeid() + book.getTitle());
        return restadd;
    }/*增加图书*/

    public String findBookType() throws Exception {
        String restType;
        ManageTitlesDao mttype = new ManageTitlesDao();
        List allTypeList = mttype.findBookType();
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("alltypelist", allTypeList);
        restType = "bookType";
        return restType;
    }/*从数据库读取图书类别*/

    public String findTitleByName() {
        System.out.print("===Query===");
        return "querybook";
    }

    public String findTitles() {
        ManageTitlesDao mt = new ManageTitlesDao();
        List TiltesList = null;
        try {
            TiltesList = mt.FindBooksAsTitle(book);
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("TiltesList", TiltesList);
        System.out.print("-findTitles-");
        return "querybook";
    }/*根据图书名称关键词查找图书*/


}
