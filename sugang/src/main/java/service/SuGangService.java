package service;

import entity.SuGangEntityimpl;
import vo.SuGangVO;

public class SuGangService {
	SuGangEntityimpl se;
	
	public SuGangService() {
		se = new SuGangEntityimpl();
	}
	
	public void insert(SuGangVO vo) {
		se.insert(vo);
	}
	
	public SuGangVO select(String stnum) {
		return se.select(stnum);
	}
	
	public void update(SuGangVO vo) {
		se.update(vo);
	}
	
	public void delete(String stnum) {
		 se.delete(stnum);
	}
}
