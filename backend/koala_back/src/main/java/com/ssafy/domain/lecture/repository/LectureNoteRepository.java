package com.ssafy.domain.lecture.repository;

import com.ssafy.domain.lecture.model.entity.Lecture;
import com.ssafy.domain.lecture.model.entity.LectureNote;
import com.ssafy.domain.user.model.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface LectureNoteRepository extends JpaRepository<LectureNote, Long> {

    @Query(value = "SELECT * FROM lecture_notes WHERE user_id = :userId and lecture_id = :lectureId", nativeQuery = true)
    List<LectureNote> findByLectureId(@Param("userId") Long userId, @Param("lectureId") Long lectureId);

    // user와 lecture에 해당하는 노트의 개수를 반환. JPQL로 작성
    @Query("SELECT COUNT(l) FROM LectureNote l WHERE l.user = :user AND l.lecture = :lecture")
    Long countByUserIdAndLectureId(@Param("user") User user, @Param("lecture") Lecture lecture);

}
