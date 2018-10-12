package com.coord.jam;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class GalleryDao extends CommonDao{
	
	public List<GalleryDto> getAlldatas(){
		List<GalleryDto> list=getSqlSession().selectList("galleryAlldatas");
		return list;
	}
	
	public void insertGallery(GalleryDto dto) {
		getSqlSession().insert("galleryInsert", dto);
	}

}
