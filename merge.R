
#copying USarrests data in a variable
arrests <- USArrests
#creating a column named stateName
arrests$stateName<-rownames(arrests)
#str(arrests)
#Merging the data
final_data <-merge(clean_data,arrests,by="stateName")
 

#str(clean_data)
#str(arrests)
final_data$area <- state.area
x <- as.list(state.center[1])
final_data$x <-x[1]
str(final_data)
