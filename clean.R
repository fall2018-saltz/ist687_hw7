
#function created in HW3 
#reading and cleaning Census data
readStates<- function(states)
{
    
    states <- states[-1,]
    
    num.row <- nrow(states)
    states <- states[-num.row,]
    
    states <- states[,-1:-4]
    states <- states[-53,]
    colnames(states)<-c("stateName","population","popOver18","percentOver18")   
    
    return(states)    

    
}
#calling function
cleanCensus <- readStates(raw_data)
#giving it to output variable
clean_data <- cleanCensus


str(state.name)
