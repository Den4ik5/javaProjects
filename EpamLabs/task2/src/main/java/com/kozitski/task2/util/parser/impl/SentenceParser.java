package com.kozitski.task2.util.parser.impl;

import com.kozitski.task2.composite.AbstractText;
import com.kozitski.task2.composite.impl.TextAll;
import com.kozitski.task2.composite.impl.TextSentence;
import com.kozitski.task2.util.parser.AbstractTextParser;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class SentenceParser implements AbstractTextParser {
    private static final String SPLIT_SENTENCE_REGEXP = "\\s";
    private TokenParser tokenParser = new TokenParser();

    @Override
    public TextSentence parse(String str) {
        TextSentence sentence = new TextSentence();

        List<String> allStr = new ArrayList<>(Arrays.asList(str.split(SPLIT_SENTENCE_REGEXP)));

        for(String s : allStr){
            sentence.add(tokenParser.parse(s));
        }

        return sentence;
    }
}
