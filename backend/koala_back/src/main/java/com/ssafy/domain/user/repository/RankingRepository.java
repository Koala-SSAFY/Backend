package com.ssafy.domain.user.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.ssafy.domain.user.model.entity.Ranking;

public interface RankingRepository extends JpaRepository<Ranking, Long> {

	Ranking findByUserId(Long userId);

	List<Ranking> findTop10ByOrderByRanking();

	@Modifying
	@Query("DELETE FROM Ranking")
	void clearRankingTable();

}
