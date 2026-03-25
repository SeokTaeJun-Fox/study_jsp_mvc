package com.app.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PostDAO;
import com.app.vo.PostVO;

public class PostUpdateOkController implements Action {

	@Override
	public Result excute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		Long id = Long.parseLong(req.getParameter("id"));
		String title = req.getParameter("postTitle");
		String content = req.getParameter("postContent");
		
		PostDAO postDAO = new PostDAO();
		PostVO postVO = new PostVO();
		
		postVO.setId(id);
		postVO.setPostTitle(title);
		postVO.setPostContent(content);
		
		postDAO.update(postVO);
		
		result.setPath("read.post?id=" + id);
		result.setRedirect(true);
		
		return result;
	}

}
