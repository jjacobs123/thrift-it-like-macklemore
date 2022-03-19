# Zalando Pre-owned: "thrift it like macklemore"
*Content: Documentation Zalando Pre-owned API/Web scraping & dataset  
Authors: Claudia Berkhof, Sanne van Ettinger, Jurg Jacobs, Demi van de Pol, Rob van der Wielen (Team 2)*

# DOCUMENTATION

## 1. MOTIVATION
### 1.1 • For what purpose was the dataset created? Was there a specific task in mind? Was there a specific gap that needed to be filled? Please provide a description.
Over the past few years, the topic of sustainability has gained a lot of attention. It is well known that in order to preserve the planet for future generations, sustainability needs to be implemented in everyday life. Therefore, a lot of companies have started to implement sustainability into their organizations. This can even be beneficial for companies, as if they are able to implement good sustainability practices and adequately diffuse them towards their stakeholders, it can in the medium term become a source of competitive advantage and as a consequence lead to value creation (Sicoli, Bronzetti & Baldini, 2019). 

The industry with the most need for sustainable practices is the fashion industry. The overall fashion industry, when it comes to the production of clothes, has displayed one of the highest levels of negligence concerning exploitation of the workforce, social well-being and drainage of the worlds natural resources (Henninger et al., 2019). Luckily, new trends have emerged in the fashion industry which could decrease its negative environmental impact. One of such trends is the utilization of second-hand clothing. Second-hand clothing leads to environmental and financial advantages as it reduced the material, water usage, production costs, and landfill spaces needed to create new clothes (King & Wheeler, 2016). As a consequence, the trade of second-hand clothing has highly increased over the past few years through consumer-to-consumer platforms such as *Vinted*, *Facebook Marketplace*, and *Marktplaats*, or through business-to-consumer platforms such as *Sellpy* and *Thredup*. What all these platforms have in common is that they are specifically dedicated to the sale of second-hand items. 

In more recent years, a new trend has started to emerge, namely existing clothing brands re-selling their own brand’s clothes previously owned by consumers. Examples of this are *Zalando’s “Pre-owned”*, *NA-KDs “Tweedehands”* and *Xan Woman’s “Pre-loved”*. 

UPDATE
**Is this paragraph necessary? I think we can maybe leave it out, also looking at what the question asks**
Buying and selling second-hand clothes via such websites can be interesting and beneficial for consumers for several reasons. Firstly, it increases the trustworthiness. Reasons why consumers do not buy second-hand clothing is because of product quality and cleanliness concerns and the social image of clothes being perceived as low-class and having low social acceptance (Hur, 2020). As consumers have already bought from the store before, they know the quality and type of clothes they can expect. Secondly, there is a financial benefit for consumers. When selling back their clothes to these websites, consumers get a fixed and guaranteed amount of money. In contrast, when selling their clothes to consumers themselves, there is a high chance that they are unable to sell it, due to no demand. Moreover, it saves them shipping costs as they can send all their clothes at once to the same address. 

For this dataset, it was chosen to focus on the website *Zalando* in The Netherlands, more specifically their *“Pre-owned”* section specified to men's clothing. Zalando started to offer this feature on their website in The Netherlands in October 2020 (Duurzaam Ondernemen, 2020). Compared to the previously mentioned websites, Zalando is an interesting choice as it offers clothes from more than 4500 brands, regular offerings and second-hand offerings, whereas a lot of other stores only offer their own brand as second-hand. This dataset was created to enable research within the topic second-hand clothing. With this dataset it could for example be investigated which brands are mostly offered for second-hand clothing and which sizes and types of products are most popular. When comparing this data over a period of time, new trends can be analyzed and it can be determined whether it is beneficial for a clothing store to offer their own clothes as second-hand. Moreover, as Zalando offers its products in more than 14 countries, the dataset of The Netherlands could be compared to other countries to see if there are country-specific differences. 

### 1.2 • Who created this dataset (e.g., which team, research group) and on behalf of which entity (e.g., company, institution, organization)?
The dataset was developed by a project group of the course Online Data Collection and Management taught by professor Hannes Datta as part of the Master Marketing Analytics at Tilburg University. 

### 1.3 • Who funded the created of the dataset? If there is an associated grant, please provide the name of the grantor and the grand name and number.
There was no funding or grant for the development of this dataset, as this dataset is a result of the web scraper which the project group built. 


## 2. COMPOSITION
### 2.1 • What do the instances that comprise the dataset represent (e.g., documents, photos, people, countries)? Are there multiple types of instances (e.g., movies, users, and ratings; people and interactions between them; nodes and edges)? Please provide a description.
The instances are men’s clothing items extracted from the Zalando website in The Netherlands. Within the instances is made a distinction between two types of men’s clothing items, “regular” men’s clothing items and “pre-owned” men’s clothing items, as this dataset should enable researchers to conduct research on the differences between them. 

### 2.2 • How many instances are there in total (of each type, if appropriate)?
Zalando supplies their products within Europe via different websites adapted to the language of the specific countries. The supply of products Zalando offers remains the same for each of the countries. As the instances in this dataset are spilt between “regular” men’s clothing items and “pre-owned” men’s clothing items, an estimation had to be made on how many instances each of the categories contains in total. Table below shows how many instances each category contained in total on March 4th 2022. Keep in mind that this is just a momentarily observation as the number of offerings will differ over time and also per day. 

**Type of instance**            | **Total number of instances**
:------------------------------ | :------------------------------------------------------------
Regular men’s clothing items    | 117,582 items divided over 15 different clothing categories
Pre-owned men’s clothing items  | 68,442 items divided over 6 different clothing categories  

(Zalando, 2022-1)(Zalando, 2022-2)

UPDATE - WEL CHECKEN OF WE UITEINDELIJK OOK ECHT DEZE SAMPLE SIZE HEBBEN GEBRUIKT
### 2.3 • Does the dataset contain all possible instances or is it a sample (not necessarily random) of instances from a larger set? If the dataset is a sample, then what is the larger set? Is the sample representative of the larger set (e.g., geographic coverage)? If so, please describe how this representativeness was validated / verified. If it is not representative of the larger set, please describe why not (e.g., to cover a more diverse range of instances, because instances were withheld or unavailable).
The dataset is a sample of instances from “regular” men’s clothing items and “pre-owned” men’s clothing items. It was decided to scrape 214 product pages for each instance. Each product page consists of 85 products, giving us a sample 18190 products each and 36380 in total. This decision was based on the computation of the technically feasible sample size. It takes 35 seconds to scrape all products on a webpage and thus 2 hours to scrape all products on 214 pages. This has to be done for both instances, which leads to a total of 4 hours of scraping. This was deemed feasible.

UPDATE 
### 2.4 • What data does each instance consist of? “Raw” data (e.g., unprocessed text or image) or features? In either case, please provide a description.
For the instance “pre-owned” men’s clothing item and regular men's clothing items, the following data is collected:

**Variable**    | **Description**                                                       | **Type of data**
:---------------|:----------------------------------------------------------------------|:--------------------
Product url     | The url for the product page                                          | Unprocessed text
Brand name      | The name of the brand which made the clothing item                    | Unprocessed text
Product type    | The type of clothing item (e.g., t-shirt, sweater, pants)             | Unprocessed text
Price           | The price at which the clothing item is offered                       | Unprocessed text
Size            | The size of the clothing item                                         | Unprocessed text
Delivery time   | The indicated number of days it takes to deliver the product          | Unprocessed text
Color           | The color of the clothing item                                        | Unprocessed text

The only difference between the collected data for the two instances, is that for the regular men's clothing items the size was not collected. This is because the data collection was made complicated by a dropdown menu. This required scraping techniques which were outside the scope of this course. Therefore, the assumption was made that for the regular offering of men's clothing, all sizes are available.

### 2.5 • Is there a label or target associated with each instance? If so, please provide a description
The label is whether or not an clothing item is pre-owned or not, as clarified in #2.1 the data is collected for men's clothing with the distinction between "regular" men's clothing items and "pre-owned" men's clothing items. 

UPDATE
### 2.6 • Is any information missing from individual instances? If so, please provide a description, explaining why this information is missing (e.g., because it was unavailable). This does not include intentionally removed information, but might include, e.g., redacted text.
*TO BE DEDICED AFTER DATA COLLECTION IS COMPLETED* 
(het fijt dat we de maat niet scrapen is geen missing information, omdat we dit expres doen)

### 2.7 • Are relationships between individual instances made explicit (e.g., users movie ratings, social network links)? If so, please describe how these relationships are made explicit.
*TO BE DEDICED AFTER DATA COLLECTION IS COMPLETED* Misschien relationship op basis van brand, maar data is niet gepersonaliseerd dus niets is bijvoorbeeld terug te leiden naar een gebruiker. Hoe ziet de rest dit?

### 2.8 • Are there recommended data splits (e.g., training, development / validation, testing)? If so, please provide a description of these splits, explaining the rationale behind them.
This dataset is not split beforehand, as the dataset should provided any person with its full information. However, it is possible to split the dataset in two separate datasets based on which products are pre-owned or not. This way differences in product characteristics can be observed. 

### 2.9 • Is the dataset self-contained, or does it link to or otherwise rely on external resources (e.g., websites, tweets, other datasets)? If it links to or relies on external resources, a) are there guarantees that they will exist, and remain constant over time; b) are there official archival versions of the complete dataset (i.e., including external resources as they existed at the time the dataset was created); c) are there any restrictions (e.g., licenses, fees) associated with any of the external resources that might apply to a future user? Please provide descriptions of all external resources and any restrictions associated with them, as well as links or other access points, as appropriate.
The dataset is self-contained and does not rely on any external resources. The data within the dataset is exclusively collected from the Zalando website (zalando.nl).

### 2.10 • Does the dataset contain data that might be considered confidential (e.g., data that is protected by legal privilege or by doctor patient confidentiality, data that includes the content of individuals non-public communications)? If so, please provide a description.
The data within this dataset is not considered confidential, as there is no user-related information extracted during the collection of the data. All data in the dataset is publicly available on the Zalando website. 

### 2.11 • Does the dataset contain data that, if viewed directly, might be offensive, insulting, threatening, or might otherwise cause anxiety? If so, please describe why.
he dataset does not contain any offensive, insulting, threatening or anxiety causing information.

### 2.12 • Does the dataset relate to people? 
As mentioned under #2.10, there is no user-related information extracted during the collection of the data.


## 3. COLLECTION PROCESS
### 3.1 • How was the data associated with each instance ac-quired? Was the data directly observable (e.g., raw text, movie ratings), reported by sub- jects (e.g., survey re-sponses), or indirectly inferred/derived from other data (e.g., part-of-speech tags, model-based guesses for age or language)? If data was reported by subjects or indirectly inferred/derived from other data, was the data validat-ed/verified? If so, please describe how.
The data is acquired by scraping both Zalando’s Heren Pre-Owned clothing pages and Zalando’s Heren Regular clothing pages. The data was directly observable as product type, brand name, size, price, colour and delivery time are all displayed on the website for consumers. 

UPDATE - WEET NIET ZEKER OF HET HELEMAAL GOED UITGELEGD IS, HEB HET BIER GROEPJE VAN VORIG JAAR ALS INSPIRATIE GEBRUIKT
### 3.2 • What mechanisms or procedures were used to collect the data (e.g., hardware apparatus or sensor, manual human curation, software pro- gram, software API)? How were these mechanisms or procedures validated?
The mechanism used to collect the data from the Zalando website is a manually programmed web scraper. The web scraper is programmed in a Jupyter Notebook. Regarding our choice of data extraction method, there were two potential options: Selenium and BeautifulSoup. Selenium is a web page rendering tool designed for automated testing, whereas BeautifulSoup is a Python library built explicitly for scaping structured HTML and XML data. It was chosen to use Selenium as it is capable of handling both static and dynamic websites. Moreover, we wanted to collect data from multiple URLs (in our case product pages), which is made easier by Selenium as it allows automating web browers. Therefore, it was decided to use Selenium to make requests on the webpages, and BeautifulSoup to scrape them.

UPDATE - ADDED THE SECOND PARAGRAPH 
### 3.3 • If the dataset is a sample from a larger set, what was the sampling strategy (e.g., deterministic, probabilistic with specific sampling probabilities)?
The data in this dataset is part of a larger dataset, namely the dataset Zalando maintains their product offerings with. As mentioned in #2.2 and #2.3, the number of product offerings on the website of Zalando (both men’s pre-owned and men’s regular) is dynamic. Meaning that the total number of instance will change over time, maybe per day but maybe even per hour. As a conclusion a fixed number of instances can never be set. For this matter it was chosen to base the sampling strategy on a momentarily observation of the number of instances.As the number of instances in this momentarily observation is this very large, it was chosen to see how many instances could be scraped within a reasonable timeframe of 2 hours per instance.

When viewing the Zalando website, there are several different ways in which you can sort the clothing items. Namely based on the highest popularity, the newest products, the lowest or highest price, or based on whether they are in the sale or not. The sorting option you choose will determine the sample of the data. In our case, we choose to select items based on the newest products first. This can be seen in the url by "order=activation_date". We choose this because... KAN JIJ JE HERINNEREN WAAROM? Moreover, as explained in section 2.3, it was chosen to only use a sample of all product pages available to decrease the scraping time. It was chosen to use the first 214 pages, as this will give us the newest product items. 

### 3.4 • Who was involved in the data collection process (e.g., students, crowdworkers, contractors) and how were they compensated (e.g., how much were crowdworkers paid)?
People involved in the data collection process were five students from the Master Marketing Analytics - Claudia Berkhof, Sanne van Ettinger, Jurg Jacobs, Demi van de Pol and Rob van der Wielen - of whom none of they were compensated in terms of money. However, these students did get compensated with gaining a lot of new knowledge during this project, which they all can use in future projects and jobs.

### 3.5 • Over what timeframe was the data collected? Does this timeframe match the creation timeframe of the data associated with the instances (e.g., recent crawl of old news articles)? If not, please describe the time- frame in which the data associated with the instances was created.
*TO-DO*  
The entire dataset was constructed on March (date) 2022.

UPDATE
### 3.6 • Were any ethical review processes conducted (e.g., by an institutional review board)? If so, please provide a description of these review processes, including the outcomes, as well as a link or other access point to any supporting documentation.
When selecting a source to scrape web data from, among others, the ethical risks should be evaluated. Firstly it was evaluated whether Zalando prohibits web scraping. In order to do so, we first look at the robots.txt for Zalando, which does not state anything about webscraping. Moreover, their website and terms and conditions also does not mention anything specific about scraping their website. However, Zalando does have a public API and takes part in Open Source Development in which they share their code and processes with the rest of the world as they want technology to benefit as many people as possible (Zalando, 2022-3). Based on this it was concluded that Zalando would allow the scraping of their website. Moreover, since we do not scrape any personal information or use the data for commercial ends, this project was considered to be ethical.

### 3.7 • Does the dataset relate to people? 
As mentioned under #2.10 and #2.11, there is no user-related information extracted during the collection of the data.


## 4. PRE-PROCESSING, CLEANING, LABELING
### 4.1 • Was any preprocessing/cleaning/labeling of the data done (e.g., discretization or bucketing, tokenization, part-of-speech tagging, SIFT feature extraction, removal of in-stances, processing of missing values)? If so, please provide a description. If not, you may skip the remain- der of the questions in this section.
*TO-DO*  
*NOTE: As we scrape both Zalando pre-owned and regular, we need to create a variable in both dataset to distinguish between these two groups. < Here elaboration on this should be written.* 

### 4.2 • Was the “raw” data saved in addition to the preprocessed/cleaned/labeled data (e.g., to support unanticipated future uses)? If so, please provide a link or other access point to the “raw” data.
*TO-DO*  
*NOTE: Align file names with the rest of the team!!!*   
All raw data is saved in CSV files. In total three raw dataset are created: 
* data_zalando_men_po.csv: contains the data of the scraper for the Zalando’s Heren Pre-Owned clothing page(s).
* data_zalando_men_reg.csv: contains the data of the scraper for the Zalando’s Heren Regular clothing page(s).
* data_zalando_men_all.csv: contains all data from the data_zalando_men_po.csv and data_zalando_men_reg.csv together as one big dataset.
These CSV files can be found on ….GOOGLE DRIVE? ADD LINK?

### 4.3 • Is the software used to preprocess/clean/label the instances available? If so, please provide a link or other access point.
*TO-DO*   
As mentioned earlier in #3.2, the web scraper is manually programmed in a Jupyter Notebook. The Jupyter Notebook which contains the source code can be found on: the following link: ...
ADD LINK TO THE REPOSITORY

## 5. USES
### 5.1 • Has the dataset been used for any tasks already? If so, please provide a description.
This dataset has not been used any tasks before, as this dataset is specially developed as a project for the course Online Data Collection and Management as part of the Master Marketing Analytics at Tilburg University. 

UPDATE 
### 5.2 • Is there a repository that links to any or all papers or systems that use the dataset? If so, please provide a link or other access point.
Since the data has not been used yet for any taskt, there are no papers or systems avaialble that use the dataset. 

### 5.3 • What (other) tasks could the dataset be used for?
This dataset could be used for several purposes. This dataset can, for example, be used to conduct research to second-hand clothing in general, using other datasets as well to get an broader view of the general picture. Besides that, this dataset can also be used to gather insights in the differences between "regular" clothing items and "pre-owned" clothing items with a specific focus on men's clothing. But can also be combined with other datasets that contain for example data of women's clothing. These are just simple examples of what can be done with the data. This data, however, can serve as a bases of many other research directions.

### 5.4 • Is there anything about the composition of the dataset or the way it was collected and preprocessed/cleaned/labeled that might impact future uses? For example, is there anything that a future user might need to know to avoid uses that could result in unfair treatment of individuals or groups (e.g., stereotyping, quality of service issues) or other undesirable harms (e.g., financial harms, legal risks) If so, please provide a description. Is there any-thing a future user could do to mitigate these undesirable harms?  
*TO-DO*

### 5.5 • Are there tasks for which the dataset should not be used? If so, please provide a description. 
This data is collected to analyse, gather insights, and finally draw conclusions based on the findings of the analyses. The data in this dataset should only be used for research purposes. The data in this dataset can not and should not be used to commit plagiarism or anything closely related to it. 




## REFERENCES
* Duurzaam Ondernemen. (2020). *Zalando Lanceert “Pre-Owned” in Nederland*. Duurzaam Ondernemen. https://www.duurzaam-ondernemen.nl/zalando-lanceert-pre-owned-in-nederland/
* Henninger, C. E., Alevizou, P. J., Goworek, H., & Ryding, D. (Eds.). (2017). *Sustainability in fashion: A cradle to upcycle approach*. Springer.
* Hur, E. (2020). Rebirth fashion: Secondhand clothing consumption values and perceived risks. *Journal of Cleaner Production*, 273, 122951.
* King, J., & Wheeler, A. (2016). *Setting the record straight*. Recyclingwasteworld. https://www.recyclingwasteworld.co.uk/opinion/setting-the-record-straight/147367/
* Sicoli, G., Bronzetti, G., & Baldini, M. (2019). The importance of sustainability in the fashion sector: Adidas case study. *International Business Research*, 12(6), 41-51.
* Zalando. (2022-1). *Zalando Pre-owned kleding heren.* Zalando.nl: https://www.zalando.nl/pre-owned-kleding-heren/?order=activation_date
* Zalando. (2022-2). *Zalando Herenkleding.* Zalando.nl: https://www.zalando.nl/herenkleding/?order=activation_date
* Zalando. (2022-3). *Zalando Open Source.* https://opensource.zalando.com

