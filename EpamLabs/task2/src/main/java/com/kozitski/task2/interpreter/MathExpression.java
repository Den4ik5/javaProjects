package com.kozitski.task2.interpreter;

@FunctionalInterface
public interface MathExpression {
    void interpret(Context context);
}
