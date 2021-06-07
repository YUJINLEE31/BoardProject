package kr.ac.kopo.kopo31.dao;

import kr.ac.kopo.kopo31.dao.BoardDao;
import kr.ac.kopo.kopo31.dao.BoardDaoImpl;
import kr.ac.kopo.kopo31.domain.Board;

public class BoardDaoTest2 {
   public static void main(String[] args) {
      Board board = new Board();
      
      board.setId(1);
      board.setTitle("abcd");
      
      BoardDao boardDao = new BoardDaoImpl();
      boardDao.create(board);
      
   }
}