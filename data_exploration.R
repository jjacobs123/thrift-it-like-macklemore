
# Load R-packages
library(dplyr)
library(readr)
library(ggplot2)
library(readxl)


# 1. DATA INSPECTION ZALANDO PRE-OWNED HEREN
## 1.1 CLEANING 

### Import dataset product_descriptions_pre-owned 
product_description_pre_owned <- read_delim("../data/product_description_pre_owned.csv", 
                                            delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(product_description_pre_owned)

######################################
product_description_pre_owned1 <- read_excel("../data/product_description_pre_owned.xlsx", sheet = 1, col_names = TRUE, col_types = NULL, na = "", skip = 0)
View(product_description_pre_owned1)

######################################


### Check class of every variable
class(product_description_pre_owned$brand)
class(product_description_pre_owned$price)
class(product_description_pre_owned$delivery_time)
class(product_description_pre_owned$category)
class(product_description_pre_owned$color)
class(product_description_pre_owned$size)
class(product_description_pre_owned$date)

### Remove double hyphens in $delivery_time
product_description_pre_owned$delivery_time <-  gsub("--", "-", product_description_pre_owned$delivery_time)

### Change measurement scale of $delivery_time to categorical using as.factor 
product_description_pre_owned$delivery_time <- as.factor(product_description_pre_owned$delivery_time)

### Transform $date into a 'date' variable
product_description_pre_owned <- product_description_pre_owned %>% 
  mutate(date_ymd = as.Date(product_description_pre_owned$date, format = "%Y-%m-%d"))

### Relocate $date and $date_ymd
product_description_pre_owned <- product_description_pre_owned %>% 
  relocate(date, .before = url) %>% 
  relocate(date_ymd, .before = url)



## 1.2 INSPECTION 
### General summary statistics
summary(product_description_pre_owned)

# Conclusion $price: The mean price for all products is 23.89 euros. 
# Conclusion $delivery_time: For the delivery time, it can be seen that 30 rows had none. This is due to the fact that these products have already been sold. Only four products have the delivery time of 1-4 days. The rest of the products have a delivery time of 3-6 days. 


### Exploration $brand
# Number of different brands in the dataset: In total 625 brands occur in the dataset. The number of brand is too much to plot.
brand_n_po <- product_description_pre_owned %>%
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
category_n_po <- product_description_pre_owned %>%
count(category)

# Create new dataset with the products that occurs more than a 100 times: By far, 'overhemd' (= shirt, in English) is offered the most at Zalando Pre-owned.  
category_most_occur_po <- category_n_po %>%
  filter(n > 100)

ggplot(data = category_most_occur_po, aes(x = category, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Products that occur the most at Zalando Pre-owned",
       x = "Category", y = "Number of times in dataset")

### Exploration $color
# Number of different colors in the dataset: 247 color or color combinations occur in the dataset. This are too many colors to plot.
color_n_po <- product_description_pre_owned %>%
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
size_n_po <- product_description_pre_owned %>%
  count(size)

# Create new dataset with the sizes that occurs more than a 100 times:   For sizes, it is a bit hard to conclude which occur the most at Zalando Pre-owned, since e.g. jeans and shirts are measured in different size charts. But in general, the size M 'Medium', followed by L 'Large', occurs the most at Zalando Pre-owned.
size_most_occur_po <- size_n_po %>%
  filter(n > 100)

ggplot(data = size_most_occur_po, aes(x = size, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Sizes that occurs the most on Zalando Pre-owned",
       x = "Sizes", y = "Number of times in dataset")


#############################################################################################################################



# NOTE: HIERONDER VOOR HERENKLEDING ALLEEN NOG FF DE TEKST/BEVINDINGEN VERVANGEN DOOR DE JUISTE!!







# 2. DATA INSPECTION ZALANDO REGULAR HEREN
## 2.1 CLEANING 

### Import dataset product_descriptions_regular  
product_description_regular <- read_delim("../data/product_description_herenkleding.csv", 
                                            delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(product_description_regular)

######################################
product_description_regular1 <- read_excel("../data/product_description_herenkleding.xlsx", sheet = 1, col_names = TRUE, col_types = NULL, na = "", skip = 0)
View(product_description_regular1)

######################################


### Check class of every variable
class(product_description_regular$brand)
class(product_description_regular$price)
class(product_description_regular$delivery_time)
class(product_description_regular$category)
class(product_description_regular$color)
class(product_description_regular$size)
class(product_description_regular$date)

### Remove double hyphens in $delivery_time
product_description_regular$delivery_time <-  gsub("--", "-", product_description_regular$delivery_time)

### Change measurement scale of $delivery_time to categorical using as.factor 
product_description_regular$delivery_time <- as.factor(product_description_regular$delivery_time)

### Transform $date into a 'date' variable
product_description_regular <- product_description_regular %>% 
  mutate(date_ymd = as.Date(product_description_regular$date, format = "%Y-%m-%d"))

### Relocate $date and $date_ymd
product_description_pre_regular <- product_description_regular %>% 
  relocate(date, .before = url) %>% 
  relocate(date_ymd, .before = url)


## 2.2 INSPECTION 
### General summary statistics
summary(product_description_regular)

# Conclusion $price: The mean price for all products is X euros. 
# Conclusion $delivery_time: For the delivery time ..CONCLUSION..


### Exploration $brand
# Number of different brands in the dataset: In total X brands occur in the dataset. The number of brand is too much to plot.
brand_n <- product_description_regular %>%
  count(brand)

# Create new dataset with the brands that occur more than 250 times: CONCLUSION
brand_most_occur <- brand_n %>%
  filter(n > 250)

ggplot(data = brand_most_occur, aes(x = brand, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Brands that occur the most at Zalando Regular",
       x = "Brands", y = "Number of times in dataset")

### Exploration $category
# Number of different categories in the dataset: X categories occur in the dataset. This is too much to plot.
category_n <- product_description_regular %>%
  count(category)

# Create new dataset with the products that occurs more than a 100 times: CONCLUSION
category_most_occur <- category_n %>%
  filter(n > 100)

ggplot(data = category_most_occur, aes(x = category, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Products that occur the most at Zalando Regular",
       x = "Category", y = "Number of times in dataset")

### Exploration $color
# Number of different colors in the dataset: X color or color combinations occur in the dataset. This are too many colors to plot.
color_n <- product_description_regular %>%
  count(color)

# Create a dataset with the colors that occurs more than a 100 times: CONCLUSION
color_most_occur <- color_n %>%
  filter(n > 100)

ggplot(data = color_most_occur, aes(x = color, y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Colors that occurs the most on Zalando Regular",
       x = "Color", y = "Number of times in dataset")


