# DCV-Segmentation

The best approach to finishing the assignment is that steps 1 and 2 should be performed in SPSS.  

I have uploaded two syntax files for SPSS to GitHub.  One is a general exploratory model for finding segments (Code_SPSS.sps).  The other (Code_SPSS_Fixed.sps) is provided in case your general exploratory model only finds two or less clusters.    /VIEWMODEL DISPLAY=YES EVALUATIONFIELDS=designation province region_1 taster_twitter_handle taster_name  title  winery that says   /NUMCLUSTERS FIXED=4 but this can be changed to any number you want.  For instance, if you want 5 clusters, you would modify the lien to read   /NUMCLUSTERS FIXED=5.

In the code, I specified the E: drive in the code (GET  FILE='E:\WineMagazineData.sav'.) as the location and the file name as WineMagazineData.sav.  However, if you are specifying another drive/location/name, just change the GET FILE line to what you like.  For instance, if you are in the D:\UTS\DCV folder and the file name is Class.sav, you would type: GET  FILE=' D:\UTS\DCV \Class.sav'.  I have added a line of syntax to this file that saves the file as a CSV, which will be necessary for the cloud generator in Step 4.

For Step 2, the line   /VIEWMODEL DISPLAY=YES   /VIEWMODEL DISPLAY=YES EVALUATIONFIELDS=designation province region_1 taster_twitter_handle taster_name title  winery tells SPSS to give the characterizes of each segment using the non-clustering variables.

For the word/tag cloud in step 3, you can use R/R-Studio and I have uploaded the syntax file cloud_segment.R to help with this.  I have put remark lines in to help you with the R code.  The syntax file should help you generate a PNG file with a word cloud for each of the segments you found.
 
Once you have the clusters and the information from the word clouds, you will use your own knowledge/option for step 4.  

