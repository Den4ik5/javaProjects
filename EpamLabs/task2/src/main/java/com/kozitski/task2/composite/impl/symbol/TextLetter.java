package com.kozitski.task2.composite.impl.symbol;

import com.kozitski.task2.composite.AbstractText;
import com.kozitski.task2.composite.impl.TypeOfTextComponent;

import java.util.Objects;

public class TextLetter implements AbstractText {
    private String letter;
    public TextLetter(String letter) {
        this.letter = letter;
    }

    @Override
    public int countOfOrderedSymbol(String symbol) {
        if(letter.equalsIgnoreCase(symbol)){
            return 1;
        }
        return 0;
    }
    @Override
    public String getTextMessage() {
        return letter;
    }
    @Override
    public boolean add(AbstractText abstractText) {
        return false;
    }
    @Override
    public boolean remove(AbstractText abstractText) {
        return false;
    }
    @Override
    public boolean removeAll() {
        return false;
    }
    @Override
    public AbstractText getComponent(int index) {
        throw new UnsupportedOperationException("That method is not for leaf object");
    }
    @Override
    public int getComponentsSize() {
        throw new UnsupportedOperationException("That method is not for leaf object");
    }
    @Override
    public TypeOfTextComponent getTypeOfTextComponent() {
        throw new UnsupportedOperationException("That method is not for leaf object");
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof TextLetter)) return false;
        TextLetter that = (TextLetter) o;
        return Objects.equals(letter, that.letter);
    }
    @Override
    public int hashCode() {
        return 31 * letter.hashCode();
    }
    @Override
    public String toString() {
        return letter;
    }

}
