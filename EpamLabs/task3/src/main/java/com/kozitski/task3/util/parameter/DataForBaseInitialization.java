package com.kozitski.task3.util.parameter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import com.kozitski.task3.entity.Product;
import com.kozitski.task3.entity.ProductType;
import com.kozitski.task3.util.generator.ProductIdGenerator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.*;

public class DataForBaseInitialization {
    private static final Logger LOGGER = LogManager.getLogger(DataForBaseInitialization.class);
    private static final String BASE_INITIALIZATION_PATH = "src/main/resources/data/initialization.yml";
    private List<String> names;
    private List<BigDecimal> prices;
    private List<String> types;

    private DataForBaseInitialization(){ }

    public static DataForBaseInitialization getInstance() throws IOException {

        ObjectMapper mapper = new ObjectMapper(new YAMLFactory());

        DataForBaseInitialization dataForBaseInitialization;
        dataForBaseInitialization = mapper.readValue(new File(BASE_INITIALIZATION_PATH), DataForBaseInitialization.class);

        return dataForBaseInitialization;
    }
    public Product createProduct(){
        String name;
        BigDecimal price;

        int number = new Random().nextInt(names.size());
        name = names.get(number);
        price = prices.get(number);

        ProductType type = generateType(number);

        LOGGER.info("Attributes for product were generated successfully. Name: " + name + ", Price: " + price + ", Type: " + type);
        return new Product(name, price, type);
    }
    private ProductType generateType(int number){
        if(number != 0 && number != 1){
            return ProductType.PERISHABLE;
        }
        else {
            return ProductType.NOT_PERISHABLE;
        }
    }


    public ArrayList<String> getNames() {
        return new ArrayList<>(names);
    }
    public void setNames(List<String> names) {
        this.names = names;
    }
    public ArrayList<BigDecimal> getPrices() {
        return new ArrayList<>(prices);
    }
    public void setPrices(List<BigDecimal> prices) {
        this.prices = prices;
    }
    public ArrayList<String> getTypes() {
        return new ArrayList<>(types);
    }
    public void setTypes(List<String> types) {
        this.types = types;
    }

    @Override
    public String toString() {
        return "DataForBaseInitialization{" +
                "names=" + names +
                ", prices=" + prices +
                ", types=" + types +
                '}';
    }

}