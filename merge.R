
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
final_data$x <-state.center$x
final_data$y <- state.center$y

