package com.ssafy.domain.board.controller;

import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.domain.board.model.dto.request.BoardCommentCreateRequest;
import com.ssafy.domain.board.model.dto.request.BoardCreateRequest;
import com.ssafy.domain.board.model.dto.response.BoardCommentResponse;
import com.ssafy.domain.board.model.dto.response.BoardResponse;
import com.ssafy.domain.board.model.dto.response.BoardDetailResponse;
import com.ssafy.domain.board.service.BoardCommentService;
import com.ssafy.domain.board.service.BoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/boards")
public class BoardController {

	private final BoardService boardService;
	private final BoardCommentService boardCommentService;

	@PostMapping
	public ResponseEntity<?> createBoard(@RequestBody BoardCreateRequest boardCreateRequest) {
		BoardResponse boardCreateResponse = boardService.createBoard(boardCreateRequest);
		return ResponseEntity.status(HttpStatus.CREATED).body(boardCreateResponse);
	}

	@GetMapping
	public ResponseEntity<?> getBoards(Pageable pageable) {
		return ResponseEntity.ok().body(boardService.getBoards(pageable));
	}


	@GetMapping("/{board_id}/comments")
	public ResponseEntity<?> getBoard(@PathVariable("board_id") Long boardId, Pageable pageable) {
		BoardDetailResponse boardDetailResponse = boardService.getBoard(boardId, pageable);
		boardService.increaseHit(boardId);
		return ResponseEntity.ok().body(boardDetailResponse);
	}

	@PostMapping("/{board_id}/comments")
	public ResponseEntity<?> createComment(@PathVariable("board_id") Long boardId,
		@RequestBody BoardCommentCreateRequest boardCommentCreateRequest) {
		BoardCommentResponse boardCommentResponse = boardCommentService.createComment(boardId,
			boardCommentCreateRequest);
		boardService.increaseCommentNum(boardId);
		return ResponseEntity.status(HttpStatus.CREATED).body(boardCommentResponse);
	}

}
