package com.ssafy.domain.board.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ssafy.domain.board.model.dto.request.BoardCommentCreateRequest;
import com.ssafy.domain.board.model.dto.response.BoardCommentResponse;

public interface BoardCommentService {

	BoardCommentResponse leaveComment(Long boardId, BoardCommentCreateRequest boardCommentCreateRequest);

	void deleteComment(Long commentId);

}
