# Run libraries
library(readr)
library(ggplot2)
library(dplyr)

## Clean dataset 

# Import csv product descriptions Pre-owned 
product_description_pre_owned <- read_delim("data/product_description_pre_owned.csv", 
                                            delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(product_description_pre_owned)

# Remove double stripes in delivery_time
product_description_pre_owned$delivery_time <-  gsub("--", "-", product_description_pre_owned$delivery_time)

# Change measurement scale of delivery_time into categorical 
product_description_pre_owned$delivery_time <- as.factor(product_description_pre_owned$delivery_time)

## Dataset is ready to do some exploration with:

# Summarize data
summary(product_description_pre_owned)
# The mean price for all products is 23.89 euros.
# For the delivery time, it can be seen that 30 rows had none. This is due to the fact that these products have already been sold. Only four products have the delivery time of 1-4 days. The rest of the products have a delivery time of 3-6 days. 


## Explore Brand

# 625 brands occur in the dataset. This is too much to plot.
brand_n <- product_description_pre_owned %>%
  count(brand)

# Create a dataset with the brands that occur more than 250 times. 
brand_most_occur <- brand_n %>%
  filter(n > 250)

ggplot(data = brand_most_occur, aes(x = brand, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Brands that occur the most at Zalando Pre-owned",
       x = "Brands", y = "Number of times in dataset")

# 'Next' occurs the most at Zalando Pre owned, followed by 'Marks & Spencer'.


## Explore Categories

# 73 categories occur in the dataset. This is too much to plot.
category_n <- product_description_pre_owned %>%
count(category)

# Create a dataset with the products that occurs more than a 100 times. 
category_most_occur <- category_n %>%
  filter(n > 100)

ggplot(data = category_most_occur, aes(x = category, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Products that occur the most at Zalando Pre-owned",
       x = "Category", y = "Number of times in dataset")

# By far, 'overhemd' (= shirt, in English) is offered the most at Zalando Pre-owned. 


## Explore Color

# 247 color or color combinations occur in the dataset. This is too much to plot.
color_n <- product_description_pre_owned %>%
  count(color)

# Create a dataset with the colors that occurs more than a 100 times. 
color_most_occur <- color_n %>%
  filter(n > 100)

ggplot(data = color_most_occur, aes(x = color, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Colors that occurs the most on Zalando Pre-owned",
       x = "Color", y = "Number of times in dataset")

# 'Blue' is by far the most offered product color at Zalando Pre-owned. 


## Explore Size

# 247 sizes occur in the dataset. This is too much too plot.
size_n <- product_description_pre_owned %>%
  count(size)

# Create a dataset with the sizes that occurs more than a 100 times. 
size_most_occur <- size_n %>%
  filter(n > 100)

ggplot(data = size_most_occur, aes(x = size, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Sizes that occurs the most on Zalando Pre-owned",
       x = "Sizes", y = "Number of times in dataset")

# For sizes, it is a bit hard to conclude which occur the most at Zalando Pre-owned, since e.g. jeans and shirts are measured in different size charts. But in general, the size M 'Medium', followed by L 'Large', occurs the most at Zalando Pre-owned.


