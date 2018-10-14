package com.kozitski.triangle.service.generator;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class TriangleIdGenerator {
    private static final long MAX_ID_BOUNDER = 66_070_666;
    private static long counter = 1;
    private static final Logger LOGGER = LogManager.getLogger(TriangleIdGenerator.class);

    private TriangleIdGenerator() { }

    public static long getId(){
        if(counter < MAX_ID_BOUNDER){
            return counter++;
        }
        else {
            LOGGER.error("ID for Triangle is not generated");
            throw new RuntimeException("Id value is bigger than, allowed: " + counter);
        }
    }
}
