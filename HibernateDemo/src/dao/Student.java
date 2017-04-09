package dao;

/**
 * Created by Luo_0412 on 2017/4/9.
 */
public class Student {

    private int id ;//id
    private String name;//用户名
    private String pass;//密码
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
    public Student(String name,String pass) {
        this.name = name;
        this.pass = pass;
    }
    public Student() {//默认构造方法

    }
}

