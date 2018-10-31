package com.kozitski.task3.entity;

import com.kozitski.task3.exception.LogisticBaseException;
import com.kozitski.task3.util.parameter.DataForBaseInitialization;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.util.*;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;

public class LogisticBase implements Runnable{
    private static final Logger LOGGER = LogManager.getLogger(LogisticBase.class);
    private static final int INITIAL_CAPACITY = 1000;
    private static final int COUNT_OF_PLACES = 7;
    private static final int TIME_OF_SERVICE = 3;

    private static final int COUNT_OF_TERMINALS = 3;
    private static int nowService;

    private static LogisticBase base;
    private static ReentrantLock lock = new ReentrantLock();
    private static AtomicBoolean isCreate = new AtomicBoolean(false);
    private Queue<Wagon> wagons;  // offer/poll
    private ArrayDeque<Product> products;  // push/pollLast

    private LogisticBase() throws LogisticBaseException {
        wagons = new PriorityQueue<>();
        products = new ArrayDeque<>();

        init();
    }
    private void init() throws LogisticBaseException {
        try {
            DataForBaseInitialization initialization = DataForBaseInitialization.getInstance();
            for (int i = 0; i < INITIAL_CAPACITY; i++) {
                products.add(initialization.createProduct());
            }

        } catch (IOException e) {
            LOGGER.fatal("Base was not filed by products", e);
            throw new LogisticBaseException("Base was not filed by products", e);
        }
    }
    public static LogisticBase getInstance() throws LogisticBaseException{
        if(!isCreate.get()){
            try {
                lock.lock();
                if(base == null){
                    base = new LogisticBase();
                    isCreate.set(true);
                }
            }
            finally {
                lock.unlock();
            }
        }
        return base;
    }

    @Override
    public void run() {
        while (true){

            try {

                if(nowService < COUNT_OF_TERMINALS && wagons.size() > 0){
                    TimeUnit.SECONDS.sleep(TIME_OF_SERVICE);
                    wagons.poll().doActivity();

                }

            }
            catch (LogisticBaseException | InterruptedException e) {
                LOGGER.error("Operation under wagon was failed", e);
            }

        }
    }

    public boolean offer(Wagon wagon) {
        try {
            lock.lock();
            if(wagons.size() < COUNT_OF_PLACES){
                boolean result = wagons.offer(wagon);
                return result;
            }
        }
        finally {
            lock.unlock();
        }
        return false;
    }

    @Override
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();

        stringBuilder.append("Base contains next products: ");
        stringBuilder.append("\n");
        for(Product product : products){
            stringBuilder.append(product);
            stringBuilder.append("\n");
        }

        return stringBuilder.toString();
    }

}