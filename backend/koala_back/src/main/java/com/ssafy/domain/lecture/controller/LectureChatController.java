package com.ssafy.domain.lecture.controller;

import com.google.gson.JsonObject;
import com.ssafy.domain.lecture.chat.LectureChatRoom;
import com.ssafy.domain.lecture.service.LectureChatService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/lectures/chat")
public class LectureChatController {

    private final LectureChatService lectureChatService;

    @PostMapping
    public ResponseEntity<?> createRoom(@RequestParam(name = "lecture") Long lectureId) {
        LectureChatRoom chatRoom = lectureChatService.makeLectureChatRoom(lectureId);
        if (chatRoom == null) {
            return ResponseEntity.ok().body(chatRoom);
        } else {
            return ResponseEntity.badRequest().body("채팅방 생성 오류 발생");
        }
    }

    @DeleteMapping
    public ResponseEntity<?> deleteRoom(@RequestParam(name = "lecture") Long lectureId) {
        lectureChatService.deleteLectureChatRoom(lectureId);
        return ResponseEntity.ok().body("채팅방 삭제 완료");
    }

}
