package minilib.action;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
    private String identifynumber;
    private String nickname;
    private String sex;
    private String username;
    private String userpass;

    public String getIdentifynumber() {
        return identifynumber;
    }

    public void setIdentifynumber(String identifynumber) {
        this.identifynumber = identifynumber;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }


}
