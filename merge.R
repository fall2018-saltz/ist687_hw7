

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
str(state.name)
