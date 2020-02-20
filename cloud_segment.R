# Use UTS Online master NOT MSA until grade sheets come out
# STUDENT_CODE	FIRST_NAME	LAST_NAME COURSE 
library(foreign)
library(readxl)
library(plyr)
library(xlsx)
library(tm)
library(wordcloud)
library(RColorBrewer)

# you can change directory below as needed
setwd("E:")

wine_txt = read.csv("WineMagazineData_Clustered.csv",header=TRUE)
# change the cluster number from 1 as needed in the line below 
# to Cluster_Number==2, Cluster_Number==3, etc etc
wine_txt <- subset(wine_txt, wine_txt$Cluster_Number==1)

wine<-Corpus(VectorSource(wine_txt$description))
wine_data<-tm_map(wine,stripWhitespace)
wine_data<-tm_map(wine_data,tolower)
wine_data<-tm_map(wine_data,removeNumbers)
wine_data<-tm_map(wine_data,removePunctuation)
wine_data<-tm_map(wine_data,removeWords, stopwords("english"))
# you can add words to take out below as needed and/or necessary
wine_data<-tm_map (wine_data,removeWords, c("wines","wine"))
tdm_wine<-TermDocumentMatrix (wine_data) #Creates a TDM
TDM1<-as.matrix(tdm_wine) #Convert this into a matrix format

pal2 <- brewer.pal(9,"GnBu")
# if you change cluster number you should change file name below as you change clusters above
# for instance, Cluster_Number_2.png, Cluster_Number_3.png etc
png("Cluster_Number_1.png", width=400,height=400)
wordcloud(wine_data, max.words=30, random.order=FALSE, colors=pal2)
dev.off()

## get rid of old files 
rm(pal2)
rm(tdm_wine)
rm(TDM1)
rm(wine)
rm(wine_data)
rm(wine_txt)


