package dao;

import model.Member;

public interface MemberDao {

	public Member selectId(Member m);
	public Member passCheck(Member m);
}
