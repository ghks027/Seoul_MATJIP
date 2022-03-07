package com.ganghwan.seoulMatjip.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ganghwan.seoulMatjip.common.FileManagerService;
import com.ganghwan.seoulMatjip.post.dao.PostDAO;
import com.ganghwan.seoulMatjip.post.model.Post;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	// 포스트 작성
	public int addPost(int userId, String userLoginId, String title, String content, MultipartFile file, String areaAreaId, MultipartFile profile) {
		
		String filePath = FileManagerService.saveFile(userId, file);
		String profilePath = FileManagerService.saveFile(userId, profile);
		
		return postDAO.insertPost(userId, userLoginId, title, content, filePath, areaAreaId, profilePath);
	}
	
	// 포스트 불러오기
	public List<Post> getPostList() {
		return postDAO.selectPostList();
	}
}
