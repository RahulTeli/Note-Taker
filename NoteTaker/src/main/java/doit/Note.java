package doit;

import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Note {

	

	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Note(String title, String content, Date addedDate, String email) {
		super();
		Title = title;
		Content = content;
		AddedDate = addedDate;
		Email = email;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public Date getAddedDate() {
		return AddedDate;
	}

	public void setAddedDate(Date addedDate) {
		AddedDate = addedDate;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID;
	@Column(length = 100)
	private String Title;
	@Column(length=2000)
	private String Content;
	private Date AddedDate;
	private String Email;

}
