package com.coord.jam;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class GalleryDto {
	private int gallery_seq;
	private String gallery_id;
	private String gallery_content;
	private Date gallery_date;
	private MultipartFile gallery_filename;
	private String gallery_imgname;
	
	public String getGallery_imgname() {
		return gallery_imgname;
	}
	public void setGallery_imgname(String gallery_imgname) {
		this.gallery_imgname = gallery_imgname;
	}
	public int getGallery_seq() {
		return gallery_seq;
	}
	public void setGallery_seq(int gallery_seq) {
		this.gallery_seq = gallery_seq;
	}
	public String getGallery_content() {
		return gallery_content;
	}
	public void setGallery_content(String gallery_content) {
		this.gallery_content = gallery_content;
	}
	public Date getGallery_date() {
		return gallery_date;
	}
	public void setGallery_date(Date gallery_date) {
		this.gallery_date = gallery_date;
	}
	public MultipartFile getGallery_filename() {
		return gallery_filename;
	}
	public void setGallery_filename(MultipartFile gallery_filename) {
		this.gallery_filename = gallery_filename;
	}
	public String getGallery_id() {
		return gallery_id;
	}
	public void setGallery_id(String gallery_id) {
		this.gallery_id = gallery_id;
	}
}
