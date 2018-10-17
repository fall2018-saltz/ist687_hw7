
#importing dependencies 
library(ggplot2)
library(ggmap)
#gets the data about the united state needed for the plot
usa <- map_data('state')
#lower casing the state names
final_data$stateName <- tolower(final_data$stateName)

# B: Generate a color coded map
# To create color coded map of usa 
map.area <- ggplot(final_data,aes(map_id= stateName))+
                geom_map(map=usa,aes(fill=area))+
                expand_limits(x=final_data$x,y=final_data$y)+
                coord_map()+
                scale_fill_gradient(low="blue", high="red")
# To create colour shaded map of usa based on murder rate of each state
map.murder <- ggplot(final_data,aes(map_id= stateName))+
                geom_map(map=usa,aes(fill=Murder))+
                expand_limits(x=final_data$x,y=final_data$y)+
                coord_map()+
                scale_fill_gradient(low="blue", high="red")

map.pop <- ggplot(final_data,aes(x=x,y=y,map_id= stateName,size=population))+
                geom_map(map=usa,fill='white',color='black',size=0.25)+
                expand_limits(x=final_data$x,y=final_data$y)+
                coord_map()+
                geom_point()
                
NY <- geocode(source='dsk',"New York City,NY")
str(NY)

map.murder.northeast <- ggplot(final_data,aes(map_id= stateName))+
                         geom_map(map=usa,aes(fill=Murder))+
                         expand_limits(x=final_data$x,y=final_data$y)+
                         coord_map()+
                         scale_fill_gradient(low="blue", high="red")+
                         xlim(NY$lon-10,NY$lon+10)+
                         ylim(NY$lat-10,NY$lat+10)  
                 

map.pop.northeast <- ggplot(final_data,aes(x=x,y=y,map_id= stateName,size=population))+
                         geom_map(map=usa,color="black",size=1)+
                         expand_limits(x=final_data$x,y=final_data$y)+
                         coord_map()+
                         geom_point(color='red')+
                         xlim(NY$lon-10,NY$lon+10)+
                         ylim(NY$lat-10,NY$lat+10)
                
                
                


