package model;

/**
 * People entity. @author MyEclipse Persistence Tools
 */


public class People implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Idcard idcard;
	private String name;
	private Integer sex;
	private Integer age;

	// Constructors

	/** default constructor */
	public People() {
	}

	/** minimal constructor */
	public People(Idcard idcard) {
		this.idcard = idcard;
	}

	/** full constructor */
	public People(Idcard idcard, String name, Integer sex, Integer age) {
		this.idcard = idcard;
		this.name = name;
		this.sex = sex;
		this.age = age;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Idcard getIdcard() {
		return this.idcard;
	}

	public void setIdcard(Idcard idcard) {
		this.idcard = idcard;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

}