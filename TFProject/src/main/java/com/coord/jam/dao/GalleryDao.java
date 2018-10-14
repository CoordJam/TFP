package com.coord.jam.dao;

import java.util.HashMap;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.coord.jam.dto.GalleryDto;

@Repository
public class GalleryDao extends CommonDao {

  public List<GalleryDto> getAlldatas() {
    List<GalleryDto> list = getSqlSession().selectList("galleryAlldata");
    return list;
  }

  public void insertGallery(GalleryDto dto) {
    getSqlSession().insert("galleryInsert", dto);
  }

  public int getCount() {
    return getSqlSession().selectOne("galleryCount");
  }

  public List<GalleryDto> getList(int start, int end) {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("start", start);
    map.put("end", end);
    List<GalleryDto> list = getSqlSession().selectList("galleryPage", map);
    return list;
  }
}
