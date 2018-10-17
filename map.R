
library(ggplot2)
usa <- map_data('state')
final_data$stateName <- tolower(final_data$stateName)
str(final_data)
map.simple <- ggplot(final_data,aes(map_id= stateName))+
                geom_map(map=usa,aes(fill=area))+
                expand_limits(x=final_data$x,y=final_data$y)
map.simple