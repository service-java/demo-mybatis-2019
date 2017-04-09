package dao;

/**
 * Created by Luo_0412 on 2017/4/9.
 */
public class Info implements java.io.Serializable {

    // Fields
    private Integer id;
    private String name;
    private String pass;

    // Constructors

    /** default constructor */
    public Info() {
    }

    /** minimal constructor */
    public Info(Integer id) {
        this.id = id;
    }

    /** full constructor */
    public Info(Integer id, String name, String pass) {
        this.id = id;
        this.name = name;
        this.pass = pass;
    }

    // Property accessors

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return this.pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

}