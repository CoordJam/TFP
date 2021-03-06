package com.coord.jam.dao;

import java.util.HashMap;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.coord.jam.dto.CommentDto;
import com.coord.jam.dto.QnaDto;

@Repository
public class QnaDao extends CommonDao {

  public List<QnaDto> getAlldatas() {
    List<QnaDto> list = getSqlSession().selectList("qnaAlldata");
    return list;
  }

  public List<QnaDto> getList(int start, int end) {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("start", start);
    map.put("end", end);
    List<QnaDto> list = getSqlSession().selectList("selectDatas", map);
    return list;
  }

  public int getCount() {
    return getSqlSession().selectOne("qnagetCount");
  }

  public QnaDto selectseqqna(int seq) {
    return getSqlSession().selectOne("qnaboardContent", seq);
  }

  public QnaDto delete(int seq) {
    return getSqlSession().selectOne("qnaboardDelete", seq);
  }

  public void insertQnaboard(QnaDto dto) {
    getSqlSession().insert("qnaboardInsert", dto);
  }

  public List<QnaDto> getMainList() {
    return getSqlSession().selectList("getMainList");
  }

  public void insertReply(CommentDto adto) {
    getSqlSession().insert("insertreply", adto);
  }

  public List<CommentDto> getReply(int num) {
    return getSqlSession().selectList("replylistByNum", num);
  }

  public void replydelete(int seq) {
    getSqlSession().delete("replyDelete", seq);
  }
}
