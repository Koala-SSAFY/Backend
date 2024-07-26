package com.ssafy.domain.sentence.model.dto.response;

import com.ssafy.domain.sentence.model.entity.Sentence;
import lombok.*;

@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SentenceDictationResponse {
    Long sentenceId;
    String sentenceText;
    Integer sentenceLength;

    public static SentenceDictationResponse toDto(Sentence sentence){
        return SentenceDictationResponse.builder()
                .sentenceId(sentence.getSentenceId())
                .sentenceText(sentence.getSentenceText())
                .sentenceLength(sentence.getSentenceLength())
                .build();
    }
}