package kr.ac.kopo.kopo31.service;

import java.util.List;

import kr.ac.kopo.kopo31.domain.BoardItem;

public interface BoardItemService {
	void create(BoardItem boardItem);
	BoardItem selectOne(int id);
	List<BoardItem> selectAll();
	void update(BoardItem boardItem);
	void delete(BoardItem boardItem);
}
