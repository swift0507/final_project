package dao;

import model.Member;

public interface MemberDao {

	public Member selectId(Member m);
	public Member passCheck(Member m);
	public Member findId(Member m);
	public Member findPw(Member m);
	public int resetPw(Member m);
}
