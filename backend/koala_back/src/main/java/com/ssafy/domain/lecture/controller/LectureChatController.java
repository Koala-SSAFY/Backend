package com.ssafy.domain.lecture.controller;

import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.domain.lecture.model.dto.request.LectureChatRequest;
import com.ssafy.domain.lecture.service.LectureChatService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/lectures/chat")
public class LectureChatController {
	private final LectureChatService lectureChatService;

	@MessageMapping("/{lecture_id}")
	public void messageHandler(@DestinationVariable("lecture_id") Long lectureId, LectureChatRequest message) {
		log.info("강의 채팅 요청:" + message.getSender());
		lectureChatService.sendLectureChat(lectureId, message);
	}

}
