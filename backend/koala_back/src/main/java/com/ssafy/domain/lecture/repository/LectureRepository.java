package com.ssafy.domain.lecture.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ssafy.domain.lecture.model.entity.Lecture;

public interface LectureRepository extends JpaRepository<Lecture, Long> {

	// table에서 is_open이 1인 강의만 가져오기
	@Query(value = "SELECT * FROM lectures WHERE is_open = 1", nativeQuery = true)
	List<Lecture> findAllByIsOpen();

}
