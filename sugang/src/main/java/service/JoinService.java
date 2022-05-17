package service;

import entity.JoinEntityimpl;
import exception.NullValueExample;
import vo.JoinVO;

public class JoinService {
	JoinEntityimpl je;
	
	public JoinService() {
		je = new JoinEntityimpl();
	}
	
	public void actionDo(JoinVO vo) {
		try {
			je.actionDo(vo);
		} catch (NullValueExample e) {
			System.out.println(e.getMessage());
		}
	}

	public void delete(String pw) {
		je.delete(pw);
	}
	
	public JoinVO login(String id, String pw) {
		return je.login(id, pw);
	}
}
