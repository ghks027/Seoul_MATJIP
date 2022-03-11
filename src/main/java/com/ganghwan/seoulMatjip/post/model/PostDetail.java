package com.ganghwan.seoulMatjip.post.model;

import java.util.List;

import com.ganghwan.seoulMatjip.post.comment.model.Comment;

public class PostDetail {

	private Post post;
	private List<Comment> comment;
	
	public Post getPost() {
		return post;
	}
	public void setPost(Post post) {
		this.post = post;
	}
	public List<Comment> getComment() {
		return comment;
	}
	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}
}
