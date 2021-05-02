# ETL_Project

## Collaborators:

* Sadia Khalid
* Daniella Baldriche
* Juan Ulloa

## Summary:

Our group set out to create a user-friendly tool/database to address the need of consumers to identify the different TV/Movie options across streaming platforms (Hulu, Prime Video, Disney+, and Netflix). We included a dataset that listed countries and their regions for further analysis during our first update. 
The purpose of our final database (and tables) will be to help consumers decide what streaming
service(s) best fit their needs. 

* Showing the different movies offered by each of the streaming services
* Which movies are repeating, if any, throughout the different streaming services
* Showing the different countries/regions the movies were created in 
* The amount of times a movie was filmed (created) in a specific country/region 

## Extraction (Data Collection):

Source: Kaggle
* Netflix: https://www.kaggle.com/shivamb/netflix-shows
* Multiple Streaming Services: https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney
* Countries of the World: https://www.kaggle.com/fernandol/countries-of-the-world

Format of Data: CSVs

CSVs: Netflix, Multiple Streaming Services, and Countries of the World

### Netflix
This dataset consists of TV shows and movies available on Netflix as of 2019. The dataset is collected from Flixable which is a third-party Netflix search engine.

### Multiple Streaming Services
The dataset is an amalgamation of data that was scraped, which comprised a comprehensive list of movies available on various streaming platforms (Netflix, Disney+, Hulu, and Prime Video) and IMDB dataset. 

### Countries of the World
This dataset contains information on country names, populations, regions, area size, infant mortality and more.

## Transformation (Data Cleaning)
Once we were able to create dataframes of our streaming services and countries of the world, we cleaned each dataframe individually. We needed to determine data integrity and interpret the data. This included dropring null/blank values, renaming titles, and removing rows when necessary. 

Code for this can be seen here and also in the respectful python notebooks: ![New Note](https://user-images.githubusercontent.com/78834635/116783581-75cd4780-aa5d-11eb-9fe2-ae9a6909c086.jpeg)

![New Note-1](https://user-images.githubusercontent.com/78834635/116783588-8251a000-aa5d-11eb-98ac-72a96cca0909.jpeg)


## Loading
We used the transformed dataframes and merged the data using pandas. We merged the Hulu, Disney+, and Prime Video columns (from the Multiple Streaming Services dataset) onto the Netflix dataset. Thus, finally creating the completed dataframe. 

A snippet of the loaded merged dataframe is included here: ![New Note-2](https://user-images.githubusercontent.com/78834635/116783630-be850080-aa5d-11eb-9808-d0c890d0c605.jpeg)


We then created a connection to the database (postgresql) using pandas with our newly merged dataframe. 

A snippet is included here: <img width="798" alt="Screen Shot 2021-05-01 at 3 35 49 AM" src="https://user-images.githubusercontent.com/78834635/116783404-98129580-aa5c-11eb-975e-da2dc78714fa.png">

We then created a connection to the database (postgresql) using pandas with our newly merged dataframe. 

A snippet is included here: ![connect_to_load_netflix](https://user-images.githubusercontent.com/78834635/116799448-68e53e00-aac7-11eb-9550-7b98e17ca08b.png)

We also created a ETL process to extract and load countries to the database: ![Import_Countries](https://user-images.githubusercontent.com/78834635/116799455-7f8b9500-aac7-11eb-9d96-094a38af8321.png)

Creating the database as follows: ![Design_Database](https://user-images.githubusercontent.com/78834635/116799461-8e724780-aac7-11eb-9552-82f776fcb3b1.png)


The script used to create tables into a database motor was: ![Script_Create_Table](https://user-images.githubusercontent.com/78834635/116799466-9c27cd00-aac7-11eb-95a2-8783eee93074.png)

Screenshots of loaded data: ![Netflix_table](https://user-images.githubusercontent.com/78834635/116799474-aba71600-aac7-11eb-9445-400b314fe67b.png)

![Table_countries](https://user-images.githubusercontent.com/78834635/116799477-b661ab00-aac7-11eb-8c20-9d954aefe4e1.png)






