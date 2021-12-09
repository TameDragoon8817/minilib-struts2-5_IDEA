/**
 * 
 */
package minilib.action;

import javax.servlet.http.*;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author �ͳ�־
 *
 */
public class LoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userpass;/*定义用户密码*/
	private String username;/*定义用户名*/
	public String getUserpass() {
		return userpass;
	}
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}/*自动生成Getter和Setter*/
	public String execute() throws Exception{
		if(getUsername().equals("admin")&&getUserpass().equals("123456")){
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session =request.getSession();
			session.setAttribute("username", username);
			return "success";
		}
		else {
			return "error";
		}
	}/*判断用户名和密码是否匹配并返回相应值*/
}
