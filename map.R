
library(ggplot2)
usa <- map_data('state')
final_data$stateName <- tolower(final_data$stateName)
str(final_data)
map.simple <- ggplot(final_data,aes(map_id= state))+
                geom_map(map=usa,aes(fill=area))
map.simple
