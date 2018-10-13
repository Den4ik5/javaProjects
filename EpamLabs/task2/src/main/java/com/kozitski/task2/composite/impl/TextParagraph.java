package com.kozitski.task2.composite.impl;

import com.kozitski.task2.composite.AbstractText;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class TextParagraph implements AbstractText {
    private List<TextSentence> sentences = new ArrayList<>();

    public TextSentence getSentence(int index) {
        return sentences.get(index);
    }
    public int getNumOfSentences(){
        return sentences.size();
    }

    @Override
    public String getTextMessage() {
        StringBuilder stringBuilder = new StringBuilder();
        sentences.removeIf(o -> o == null);
        sentences.forEach(o -> stringBuilder.append(o.getTextMessage()));
        return stringBuilder.toString();
    }

    @Override
    public boolean add(AbstractText sentence) {
        if(sentence instanceof TextSentence){
            return sentences.add((TextSentence) sentence);
        }
        return false;
    }
    @Override
    public boolean remove(AbstractText sentence) {
        if(sentence instanceof TextSentence){
            return sentences.remove(sentence);
        }
        return false;
    }

    @Override
    public boolean removeAll() {
        sentences = new ArrayList<>();
        return true;
    }

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for(TextSentence sentence : sentences){
            stringBuilder.append(sentence.getTextMessage());
            stringBuilder.append("\n");
        }
        return stringBuilder.toString();
    }

}
