# ETL_Project
Group Project
# Project 2 : No Dogs Left Behind!
 No Dog Left Behind Project- Data for dog adoption use
 
 Group members:
 - [Jackelyne Gutierrez](https://github.com/Jackelyneg)
		
- [Juliana Puskar](https://github.com/Anikraze)
		
- [Tricia Toffey](https://github.com/ttoffey)

- [Elise Eng](https://github.com/)

## Brief Description:

The intent of this database is to help shelters to place dogs based on breed characteristics. By breaking down the most popular breeds and their standardized breed behavior, it helps shelters to make suggestions as to which dog may best suit the personality of a potential adopter. The database should help to answer:

Which dog breeds are the most popular?

What are the most common personality traits within those breeds?

In a set area, how many people own the breeds we would expect?



### Technologies used:
1. Pyhton
2. Pandas
3. Splinter
4. Beautiful Soup
5. Quick DBD
6. Pg admin SQL


### ETL Steps 
1. Scrape data for popular dog breeds and rank 2017 from [AKC](https://www.akc.org/most-popular-breeds/2017-full-list/)
2. Collect data from other sources such as [Kaggle]
3. Create a quick dbd flow chart 
4. Merge collected from kaggle into postgres database
5. Create queries




## Step 1. Scraping from AKC:
- [Click here for website used](https://www.akc.org/most-popular-breeds/2017-full-list/)
- Used Beautiful soup and splinter to scrape table data 
- Cleaned up by renaming column names and resetting index to breed_id

- Click [Here](https://github.com/anikraze/no_dog_etl/blob/main/dog_breed_etl.ipynb) to see full steps


![image](https://user-images.githubusercontent.com/81592631/123521815-0ce20480-d687-11eb-8fbb-5ac5e058ba9c.png)

# ETL_Project
Group Project
# Project 2 : No Dogs Left Behind!
 No Dog Left Behind Project- Data for dog adoption use
 
 Group members:
 - [Jackelyne Gutierrez](https://github.com/Jackelyneg)
		
- [Juliana Puskar](https://github.com/Anikraze)
		
- [Tricia Toffey](https://github.com/ttoffey)

- [Elise Eng](https://github.com/)

## Brief Description:

The intent of this database is to help shelters to place dogs based on breed characteristics. By breaking down the most popular breeds and their standardized breed behavior, it helps shelters to make suggestions as to which dog may best suit the personality of a potential adopter. The database should help to answer:

Which dog breeds are the most popular?

What are the most common personality traits within those breeds?

In a set area, how many people own the breeds we would expect?



### Technologies used:
1. Pyhton
2. Pandas
3. Splinter
4. Beautiful Soup
5. Quick DBD
6. Pg admin SQL


### ETL Steps 
1. Scrape data for popular dog breeds and rank 2017 from [AKC](https://www.akc.org/most-popular-breeds/2017-full-list/)
2. Collect data from other sources such as [Kaggle]
3. Create a quick dbd flow chart 
4. Merge collected from kaggle into postgres database
5. Create queries




## Step 1. Scraping from AKC:
- [Click here for website used](https://www.akc.org/most-popular-breeds/2017-full-list/)
- Used Beautiful soup and splinter to scrape table data 
- Cleaned up by renaming column names and resetting index to breed_id
- Click [Here](https://github.com/anikraze/no_dog_etl/blob/main/dog_breed_etl.ipynb) to see full steps

## Post Project Updates
* Project invovled 3 csvs obtained from AKC.org (most popular dogs for 2017); a Kaggle dataset listing characteristics of top dog breeds and NY dog licensing dataset.
* The team created sql tables out of the csvs and ran multiple searches but had trouble with cleaning the data. 
* NYC dataset has 298 breeds and 102,009 dogs; the Characteristics dataset has 147 breeds, 147 dogs; and the AKC dataset has 190 breeds, 190 dogs. 
* Data inconsistencies amongst the datasets included "s" in one table for a dog breed but not on another - this was for the most part cleaned up.
* Other large problem not addressed was the NYC dataset had inconsistent naming; Chose to retain all data from NYC dataset because we would have lost too many dogs but this means we were unable to capture an AKC rating or other characteristics (such as temperment, price, size, etc.) for certain breeds.

Link to SQL Cleanup and Searches -


Results of last search showing top 5 breeds for the each borough:

![image](https://user-images.githubusercontent.com/67808647/141650247-b3669b17-dfe6-471d-9018-a5d989de8cd3.png)






