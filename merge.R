
#copying USarrests data in a variable
arrests <- USArrests
#creating a column named stateName
arrests$stateName<-rownames(arrests)
#str(arrests)
#Merging the data
final_data <-merge(clean_data,arrests,by="stateName")
 

#str(clean_data)
#str(arrests)
#Adding area column to the final data
final_data$area <- state.area
#Adding longitude column to the final data
final_data$x <-state.center$x
#Adding latitude column to the final data
final_data$y <- state.center$y

