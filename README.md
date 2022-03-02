# thrift-it-like-macklemore
Skills Team 2: Zalando Pre-owned API/Web scraping

# **Documentation**

## **1. Motivation**

### **1.1 For what purpose was the dataset created? Was there a specific task in mind? Was there a specific gap that needed to be filled? Please provide a description.**

Over the past few years, the topic of sustainability has gained a lot of attention. It is well known that in order to preserve the planet for future generations, sustainability needs to be implemented in everyday life. Therefore, a lot of companies have started to implement sustainability into their organizations. This can even be beneficial for companies, as if they are able to implement good sustainability practices and adequately diffuse them towards their stakeholders, it can in the medium term become a source of competitive advantage and as a consequence lead to value creation (Sicoli, Bronzetti & Baldini, 2019). 

The industry with the most need for sustainable practices is the fashion industry. The overall fashion industry, when it comes to the production of clothes, has displayed one of the highest levels of negligence concerning exploitation of the workforce, social well-being and drainage of the worlds natural resources (Henninger et al., 2019). Luckily, new trends have emerged in the fashion industry which could decrease its negative environmental impact. One of such trends is the utilization of second-hand clothing. Second-hand clothing leads to environmental and financial advantages as it reduced the material, water usage, production costs, and landfill spaces needed to create new clothes (King & Wheeler, 2016). As a consequence, the trade of second-hand clothing has highly increased over the past few years through consumer-to-consumer platforms such as *Vinted*, *Facebook Marketplace*, and *Marktplaats*, or through business-to-consumer platforms such as *Sellpy* and *Thredup*. What all these platforms have in common is that they are specifically dedicated to the sale of second-hand items. 

In more recent years, a new trend has started to emerge, namely existing clothing brands re-selling their own brand’s clothes previously owned by consumers. Examples of this are *Zalando’s “Pre-owned”*, *NA-KDs “Tweedehands”* and *Xan Woman’s “Pre-loved”*. Buying and selling second-hand clothes via such websites, can be interesting and beneficial for consumers for several reasons. Firstly, it increases the trustworthiness. Reasons why consumers do not buy second-hand clothing is because of product quality and cleanliness concerns and the social image of clothes being perceived as low-class and having low social acceptance (Hur, 2020). As consumers have already bought from the store before, they know the quality and type of clothes they can expect. Secondly, there is a financial benefit for consumers. When selling back their clothes to these websites, consumers get a fixed and guaranteed amount of money. In contrast, when selling their clothes to consumers themselves, there is a high chance that they are unable to sell it, due to no demand. Moreover, it saves them shipping costs as they can send all their clothes at once to the same address. 

For this dataset, it was chosen to focus on the website *Zalando* in The Netherlands, more specifically their *“Pre-owned”* section. Zalando started to offer this feature on their website in The Netherlands in October 2020 (Duurzaam Ondernemen, 2020). Compared to the previously mentioned websites, Zalando is an interesting choice as it offers clothes from more than 4500 brands, whereas a lot of other stores only sell their own brand. With this dataset it could for example be investigated which brands are mostly offered for second-hand clothing, which sizes and types of products are most popular, and the pictures that are used to sell the products. When comparing this data over a period of time, new trends can be analyzed and it can be determined whether it is beneficial for a clothing store to offer their own clothes as second-hand. Moreover, as Zalando offers its products in more than 14 countries, the dataset of The Netherlands could be compared to other countries to see if there are country-specific differences. 

### **1.2 Who created this dataset (e.g., which team, research group) and on behalf of which entity (e.g., company, institution, organization)?**

The  dataset was developed by a project group of the course Online Data Collection and Management taught by Hannes Datta as part of the Master Marketing Analytics at Tilburg University. 

### **1.3 Who funded the created of the dataset? If there is an associated grant, please provide the name of the grantor and the grand name and number.**

There was no funding or grant for the development of this dataset. 

## **2. Composition**

### **2.1 What do the instances that comprise the dataset represent (e.g., documents, photos, people, countries)? Are there multiple types of instances (e.g., movies, users, and ratings; people and interactions between them; nodes and edges)? Please provide a description.**

Each instance of the dataset represents a men’s clothing items on the Zalando website in The Netherlands. There are two types of instances: “regular” men’s clothing items and “pre-owned” men’s clothing items. 

### **2.2 How many instances are there in total (of each type, if appropriate)?**

To be decided 

### **2.3 Does the dataset contain all possible instances or is it a sample (not necessarily random) of instances from a larger set? If the dataset is a sample, then what is the larger set? Is the sample representative of the larger set (e.g., geographic coverage)? If so, please describe how this representativeness was validated / verified. If it is not representative of the larger set, please describe why not (e.g., to cover a more diverse range of instances, because instances were withheld or unavailable).**

The dataset does not contain all possible instances but is a sample. 

Motivation depends on previous question

### **2.4 What data does each instance consist of? “Raw” data (e.g., unprocessed text or image) or features? In either case, please provide a description.**

For each instance (i.e., clothing item) the following data will be collected:

**Variable - Description - Type of data**
1. Pre-owned -	Whether the item is pre-owned or not - Unprocessed text
2. Product type - The type of clothing item (e.g., t-shirt, sweater, pants) - Unprocessed text
3. Brand name - The name of the brand which made the clothing item - Unprocessed text
4. Size - The size of the clothing item  - Unprocessed text
5. Price - The price at which the clothing item is sold - Unprocessed text
6. Color -	The color of the clothing item - Unprocessed text
7. Delivery time -	The indicated time it takes to deliver the product to the customer - Unprocessed text 

### **2.5 Is there a label or target associated with each instance? If so, please provide a description**

Not applicable (?)

### **2.6 Is any information missing from individual instances? If so, please provide a description, explaining why this information is missing (e.g., because it was unavailable). This does not include intentionally removed information, but might include, e.g., redacted text.**

To be decided once data is collected

### **2.7 Are relationships between individual instances made explicit (e.g., users movie ratings, social network links)? If so, please describe how these relationships are made explicit.**

Not sure

### **2.8 Are there recommended data splits (e.g., training, development / validation, testing)? If so, please provide a description of these splits, explaining the rationale behind them.**

For our case, we decided not to split the dataset (?). However, there are options to do so. One option would for example be to split the dataset based on which products are pre-owned or not. This way differences in product characteristics can be observed. 

### **2.9 Is the dataset self-contained, or does it link to or otherwise rely on external resources (e.g., websites, tweets, other datasets)? If it links to or relies on external resources, a) are there guarantees that they will exist, and remain constant over time; b) are there official archival versions of the complete dataset (i.e., including external resources as they existed at the time the dataset was created); c) are there any restrictions (e.g., licenses, fees) associated with any of the external resources that might apply to a future user? Please provide descriptions of all external resources and any restrictions associated with them, as well as links or other access points, as appropriate.**

The  dataset is self-contained. It only links to and relies on the Zalando website.

### **2.10  Does the dataset contain data that might be considered confidential (e.g., data that is protected by legal privilege or by doctor patient confidentiality, data that includes the content of individuals non-public communications)? If so, please provide a description.**

No. All data in the dataset is publicly available on the Zalando website and thus no confidential information is included.

### **2.11 Does the dataset contain data that, if viewed directly, might be offensive, insulting, threatening, or might otherwise cause anxiety? If so, please describe why.**

The dataset does not contain any offensive, insulting, threatening or anxiety causing information.

### **2.12 Does the dataset relate to people? If not, you may skip the remaining questions in this section.**

No

### **2.13 Does the dataset identify any subpopulations (e.g., by age, gender)? If so, please describe how these subpopulations are identified and provide a description of their respective distributions within the dataset.**

### **2.14 Is it possible to identify individuals (i.e., one or more natural persons), either directly or indirectly (i.e., in combination with other data) form the dataset? If so, please describe how.**

### **2.15 Does the dataset contain data that might be considered sensitive in any way (e.g., data that reveals racial or ethnics origins, sexual orientations, religious beliefs, political opinions or union memberships, or locations; financial or health data; biometric or genetic data; forms of government identification, such as social security numbers; criminal history)? If so, please provide a description.**



## **References**

Duurzaam Ondernemen. (2020). *Zalando Lanceert “Pre-Owned” in Nederland*. Duurzaam Ondernemen. https://www.duurzaam-ondernemen.nl/zalando-lanceert-pre-owned-in-nederland/

Henninger, C. E., Alevizou, P. J., Goworek, H., & Ryding, D. (Eds.). (2017). *Sustainability in fashion: A cradle to upcycle approach*. Springer.

Hur, E. (2020). Rebirth fashion: Secondhand clothing consumption values and perceived risks. *Journal of Cleaner Production*, 273, 122951.

King, J., & Wheeler, A. (2016). *Setting the record straight*. Recyclingwasteworld. https://www.recyclingwasteworld.co.uk/opinion/setting-the-record-straight/147367/

Sicoli, G., Bronzetti, G., & Baldini, M. (2019). The importance of sustainability in the fashion sector: Adidas case study. *International Business Research*, 12(6), 41-51.

