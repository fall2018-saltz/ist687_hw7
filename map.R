
library(ggplot2)
usa <- map_data('state')
final_data$stateName <- tolower(final_data$stateName)
str(final_data)
map.area <- ggplot(final_data,aes(map_id= stateName))+
                geom_map(map=usa,aes(fill=area))+
                expand_limits(x=final_data$x,y=final_data$y)+
                coord_map()+
                scale_fill_gradient(low="blue", high="red")

map.murder <- ggplot(final_data,aes(map_id= stateName))+
                geom_map(map=usa,aes(fill=Murder))+
                expand_limits(x=final_data$x,y=final_data$y)+
                coord_map()+
                scale_fill_gradient(low="blue", high="red")


map.pop <- ggplot(final_data,aes(map_id= stateName))+
                geom_map(map=usa,aes(fill="white",color="black"))+
                expand_limits(x=final_data$x,y=final_data$y)+
                coord_map()+
                geom_point(aes(size=population)
              

 
