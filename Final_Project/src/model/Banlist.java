package model;

import java.sql.Date;

public class Banlist {
	private String ban_id;
	private Date ban_end;
	
	public Banlist() {}

	public Banlist(String ban_id, Date ban_end) {
		this.ban_id = ban_id;
		this.ban_end = ban_end;
	}

	public String getBan_id() {
		return ban_id;
	}

	public void setBan_id(String ban_id) {
		this.ban_id = ban_id;
	}

	public Date getBan_end() {
		return ban_end;
	}

	public void setBan_end(Date ban_end) {
		this.ban_end = ban_end;
	}

	@Override
	public String toString() {
		return "Banlist [ban_id=" + ban_id + ", ban_end=" + ban_end + "]";
	}

	
}
