* Encoding: UTF-8.

GET  FILE='E:\WineMagazineData.sav'.
execute .
TWOSTEP CLUSTER
  /CATEGORICAL VARIABLES=country taster_name variety
  /CONTINUOUS VARIABLES=points price
  /DISTANCE LIKELIHOOD
  /NUMCLUSTERS AUTO 15 BIC
  /HANDLENOISE 0
  /MEMALLOCATE 64
  /CRITERIA INITHRESHOLD(0) MXBRANCH(8) MXLEVEL(3)
  /VIEWMODEL DISPLAY=YES EVALUATIONFIELDS=designation province region_1 taster_twitter_handle title  winery 
  /SAVE VARIABLE=Cluster_Number.
SAVE OUTFILE='E:\WineMagazineData_Clustered.sav'   /COMPRESSED.
new file .

