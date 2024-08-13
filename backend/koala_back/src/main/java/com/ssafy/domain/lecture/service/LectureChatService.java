package com.ssafy.domain.lecture.service;

import com.ssafy.domain.lecture.chat.LectureChatRoom;
import com.ssafy.domain.lecture.model.dto.request.LectureChatRequest;
import com.ssafy.domain.lecture.model.dto.response.LectureChatResponse;

public interface LectureChatService {

	void sendLectureChat(Long lectureId, LectureChatRequest chat);

}
