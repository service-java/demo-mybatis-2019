package valuebean;

public class WordSingle {
	private String author;					//存储留言者
	private String title;					//存储留言标题
	private String content;					//存储留言内容
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
