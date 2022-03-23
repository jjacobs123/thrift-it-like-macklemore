# Load R-packages
library(dplyr)
library(readr)
library(ggplot2)
library(readxl)
library(data.table)


# 1. DATA INSPECTION ZALANDO PRE-OWNED HEREN
## 1.1 CLEANING 

### Import dataset product_descriptions_pre-owned 
product_description_pre_owned <- read_delim("../data/product_description_pre_owned.csv", 
                                            delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(product_description_pre_owned)

### Check class of every variable
class(product_description_pre_owned$brand)
class(product_description_pre_owned$price)
class(product_description_pre_owned$delivery_time)
class(product_description_pre_owned$category)
class(product_description_pre_owned$color)
class(product_description_pre_owned$size)
class(product_description_pre_owned$date)

### Remove double hyphens in $delivery_time
product_description_po_cleaned <- product_description_pre_owned %>% 
  mutate(delivery_time = gsub("--", "-", product_description_pre_owned$delivery_time))

### Change measurement scale of $delivery_time to categorical using as.factor 
product_description_po_cleaned$delivery_time <- as.factor(product_description_po_cleaned$delivery_time)

### Transform $date into a 'date' variable
product_description_po_cleaned <- product_description_po_cleaned %>% 
  mutate(date_ymd = as.Date(product_description_po_cleaned$date, format = "%Y-%m-%d"))

### Relocate $date and $date_ymd
product_description_po_cleaned <- product_description_po_cleaned %>% 
  relocate(date, .before = url) %>% 
  relocate(date_ymd, .before = url)

### Write CSV file cleaned dataset "product_description_po_cleaned"
fwrite(product_description_po_cleaned, '../data/product_description_po_cleaned.csv', row.names = F)



## 1.2 INSPECTION 
### General summary statistics
summary(product_description_po_cleaned)

# Conclusion $price: The mean price for all products is 23.89 euros. 
# Conclusion $delivery_time: For the delivery time, it can be seen that 30 rows had none. This is due to the fact that these products have already been sold. Only four products have the delivery time of 1-4 days. The rest of the products have a delivery time of 3-6 days. 


### Exploration $brand
# Number of different brands in the dataset: In total 625 brands occur in the dataset. The number of brand is too much to plot.
brand_n_po <- product_description_po_cleaned %>%
  count(brand)

# Create new dataset with the brands that occur more than 250 times: 'Next' occurs the most at Zalando Pre owned, followed by 'Marks & Spencer'.
brand_most_occur_po <- brand_n_po %>%
  filter(n > 250)

ggplot(data = brand_most_occur_po, aes(x = brand, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Brands that occur the most at Zalando Pre-owned",
       x = "Brands", y = "Number of times in dataset")

### Exploration $category
# Number of different categories in the dataset: 73 categories occur in the dataset. This is too much to plot.
category_n_po <- product_description_po_cleaned %>%
count(category)

# Create new dataset with the products that occurs more than a 100 times: By far, 'Overhemd' (= shirt, in English) is offered the most at Zalando Pre-owned.  
category_most_occur_po <- category_n_po %>%
  filter(n > 100)

ggplot(data = category_most_occur_po, aes(x = category, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Products that occur the most at Zalando Pre-owned",
       x = "Category", y = "Number of times in dataset")

### Exploration $color
# Number of different colors in the dataset: 247 color or color combinations occur in the dataset. This are too many colors to plot.
color_n_po <- product_description_po_cleaned %>%
  count(color)

# Create a dataset with the colors that occurs more than a 100 times: 'Blue' is by far the most offered product color at Zalando Pre-owned. 
color_most_occur_po <- color_n_po %>%
  filter(n > 100)

ggplot(data = color_most_occur_po, aes(x = color, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Colors that occurs the most on Zalando Pre-owned",
       x = "Color", y = "Number of times in dataset")

### Exploration $size
# Number of different sizes in the dataset: 247 sizes occur in the dataset. This are too many sizes to plot.
size_n_po <- product_description_po_cleaned %>%
  count(size)

# Create new dataset with the sizes that occurs more than a 100 times:   For sizes, it is a bit hard to conclude which occur the most at Zalando Pre-owned, since e.g. jeans and shirts are measured in different size charts. But in general, the size M 'Medium', followed by L 'Large', occurs the most at Zalando Pre-owned.
size_most_occur_po <- size_n_po %>%
  filter(n > 100)

ggplot(data = size_most_occur_po, aes(x = size, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Sizes that occurs the most on Zalando Pre-owned",
       x = "Sizes", y = "Number of times in dataset")


#############################################################################################################################


# 2. DATA INSPECTION ZALANDO REGULAR HEREN
## 2.1 CLEANING 

### Import dataset product_descriptions_regular  
product_description_regular <- read_delim("../data/product_description_herenkleding.csv", 
                                            delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(product_description_regular)

### Check class of every variable
class(product_description_regular$brand)
class(product_description_regular$price)
class(product_description_regular$delivery_time)
class(product_description_regular$category)
class(product_description_regular$color)

### Remove double hyphens in $delivery_time
product_description_reg_cleaned <- product_description_regular %>% 
  mutate(delivery_time = gsub("--", "-", product_description_regular$delivery_time))

### Remove 'vanaf' and replace the comma for a dot in price
product_description_reg_cleaned <- product_description_reg_cleaned %>% 
  mutate(price = gsub("Vanaf", "", product_description_reg_cleaned$price))

product_description_reg_cleaned <- product_description_reg_cleaned %>% 
  mutate(price = gsub(",", ".", product_description_reg_cleaned$price))

product_description_reg_cleaned$price <- as.numeric(product_description_reg_cleaned$price)

### Change measurement scale of $delivery_time to categorical using as.factor 
product_description_reg_cleaned$delivery_time <- as.factor(product_description_reg_cleaned$delivery_time)

### Transform $date into a 'date' variable
product_description_reg_cleaned <- product_description_reg_cleaned %>% 
  mutate(date_ymd = as.Date(product_description_reg_cleaned$date, format = "%Y-%m-%d"))

### Relocate $date and $date_ymd
product_description_reg_cleaned <- product_description_reg_cleaned %>% 
  relocate(date, .before = url) %>% 
  relocate(date_ymd, .before = url)

### Write CSV file cleaned dataset "product_description_reg_cleaned"
fwrite(product_description_reg_cleaned, '../data/product_description_reg_cleaned.csv', row.names = F)



## 2.2 INSPECTION 
### General summary statistics
summary(product_description_reg_cleaned)

# Conclusion $price: The mean price for all products is 76.82 euros. 
# Conclusion $delivery_time: Mostly all of the product are delivered between 1-2 days or 3-6 days.


### Exploration $brand
# Number of different brands in the dataset: In total 596 brands occur in the dataset. The number of brand is too much to plot.
brand_n_reg <- product_description_reg_cleaned %>%
  count(brand)

# Create new dataset with the brands that occur more than 100 times: The brand 'Next' occurs the most on Zalando Herenkleding, followed by 'Jack & Jones', 'BOSS' and 'LC Waikiki'.
brand_most_occur_reg <- brand_n_reg %>%
  filter(n > 100)

ggplot(data = brand_most_occur_reg, aes(x = brand, y = n)) +
  geom_bar(stat = "identity", fill = "orange") +
  labs(title = "Brands that occur the most at Zalando Regular",
       x = "Brands", y = "Number of times in dataset")

### Exploration $category
# Number of different categories in the dataset: 115 categories occur in the dataset. This is too much to plot.
category_n_reg <- product_description_reg_cleaned %>%
  count(category)

# Create new dataset with the products that occurs more than a 150 times: 'T-shirt print' and 'Overhemd' are by far the most offered categories on Zalando Herenkleding. These are followed by 'Poloshirt', 'Sweater' and 'Shorts'. 
category_most_occur_reg <- category_n_reg %>%
  filter(n > 150)

ggplot(data = category_most_occur_reg, aes(x = category, y = n)) +
  geom_bar(stat = "identity", fill = "orange") +
  labs(title = "Products that occur the most at Zalando Regular",
       x = "Category", y = "Number of times in dataset")

### Exploration $color
# Number of different colors in the dataset: 3730 colors or color combinations occur in the dataset. These are too many colors to plot.
color_n_reg <- product_description_reg_cleaned %>%
  count(color)

# Create a dataset with the colors that occurs more than a 100 times: 'Black" is by far the most offered color on Zalando Herenkleding. This is followed by the colors 'White', 'Blue' and 'Navy'. 
color_most_occur_reg <- color_n_reg %>%
  filter(n > 100)

ggplot(data = color_most_occur_reg, aes(x = color, y = n)) +
  geom_bar(stat = "identity", fill = "orange") +
  labs(title = "Colors that occurs the most on Zalando Regular",
       x = "Color", y = "Number of times in dataset")


