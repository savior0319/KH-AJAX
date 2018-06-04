package ajax.test.vo;

public class UserVo {

	private String name, addr;
	private int age;

	public UserVo(String name, int age, String addr) {
		super();
		this.name = name;
		this.addr = addr;
		this.age = age;
	}

	public UserVo() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}
