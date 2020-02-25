package model;

import java.util.Date;

public class ComplexFeedback {
	String id, commento,user,data;

	public ComplexFeedback(String id, String commento, String user, String string) {
		super();
		this.id = id;
		this.commento = commento;
		this.user = user;
		this.data = string;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCommento() {
		return commento;
	}
	public void setCommento(String commento) {
		this.commento = commento;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "complexFeedback [id=" + id + ", commento=" + commento + ", user=" + user + ", data=" + data + "]";
	}

}
