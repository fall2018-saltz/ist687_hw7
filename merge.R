

#copying USarrests data in a variable
arrests <- USArrests
#creating a column named stateName
arrests$stateName<-rownames(arrests)
str(arrests)
#Merging the data
final_data <-merge(clean_data,arrests,by="stateName")

str(final_data)
#str(clean_data)
#str(arrests)
final_data$area <- state.area
final_data$centerX <-state.center[1]
final_data$centerY <-state.center[2]
str(final_data)
