
#importing dependencies 
library(ggplot2)
library(ggmap)
#gets the data about the united state needed for the plot
usa <- map_data('state')
#lower casing the state names
final_data$stateName <- tolower(final_data$stateName)

# STEP B: Generate a color coded map

#(3)	Create a color coded map, based on the area of the state 
# To create color coded map of usa 
map.area <- ggplot(final_data,aes(map_id= stateName))+
                geom_map(map=usa,aes(fill=area))+
                expand_limits(x=final_data$x,y=final_data$y)+
                coord_map()+
                scale_fill_gradient(low="blue", high="red")

#Step C: Create a color shaded map of the U.S. based on the Murder rate for each state 
# (4)	Repeat step B, but color code the map based on the murder rate of each state.
# To create colour shaded map of usa based on murder rate of each state
map.murder <- ggplot(final_data,aes(map_id= stateName))+
                geom_map(map=usa,aes(fill=Murder))+
                expand_limits(x=final_data$x,y=final_data$y)+
                coord_map()+
                scale_fill_gradient(low="blue", high="red")
# To create a map of usa showing points on the map which represents the state and the size of point represnets
# the population of that state
map.pop <- ggplot(final_data,aes(x=x,y=y,map_id= stateName,size=population))+
                geom_map(map=usa,fill='white',color='black',size=0.25)+
                expand_limits(x=final_data$x,y=final_data$y)+
                coord_map()+
                geom_point()
# retriving the co-ordinates of the NYC                
NY <- geocode(source='dsk',"New York City,NY")

# zooming in near side of map with NYC in the map of usa which was color-coded based on murder rate
map.murder.northeast <- ggplot(final_data,aes(map_id= stateName))+
                         geom_map(map=usa,aes(fill=Murder))+
                         expand_limits(x=final_data$x,y=final_data$y)+
                         coord_map()+
                         scale_fill_gradient(low="blue", high="red")+
                         xlim(NY$lon-10,NY$lon+10)+
                         ylim(NY$lat-10,NY$lat+10)  
                 
# zooming in near side of map with NYC in the map of usa which was showing points which represent the state and 
# the size of the point represents the population. x`x`
map.pop.northeast <- ggplot(final_data,aes(x=x,y=y,map_id= stateName,size=population))+
                         geom_map(map=usa,color="black",size=1)+
                         expand_limits(x=final_data$x,y=final_data$y)+
                         coord_map()+
                         geom_point(color='red')+
                         xlim(NY$lon-10,NY$lon+10)+
                         ylim(NY$lat-10,NY$lat+10)
                
                
                


