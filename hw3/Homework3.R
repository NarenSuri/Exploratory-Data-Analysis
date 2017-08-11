#install.packages("noncensus")
library(noncensus)
data(counties)

CalculateFourths = function(dataset){
dataset = sort(dataset)
len = length(dataset)
if((len%%2)==0){
  medianData = median(dataset)
  fourthDepth = len/4
  uperfourthDepth = len - fourthDepth
  frth = dataset[fourthDepth]
  Ufrth = dataset[uperfourthDepth]
  spread = Ufrth-frth
  fourths = c(spread,medianData)
  return(fourths)
  
}
else{
  medianData = median(dataset)
  medianDepth = (len+1)/2
  fourthDepth = (medianDepth+1)/2
  uperfourthDepth = (len - fourthDepth)+1
  frth = dataset[fourthDepth]
  Ufrth = dataset[uperfourthDepth]
  spread = Ufrth-frth
  fourths = c(spread,medianData)
  return(fourths)}
}

states = levels(counties$state)
# lets prepare the lists to store the data, so that we can directly lpot them in the future
MeadianList = c()
StatesList =c()
SpreadList =c()

for(Astate in states)
{
DataOfAState = counties[counties$state==Astate,]
ResultFourths = CalculateFourths(DataOfAState$population)
if(!is.na(ResultFourths[1]) && ResultFourths[1] != 0)
{MeadianList = c(MeadianList,ResultFourths[2])
SpreadList = c(SpreadList,ResultFourths[1])
StatesList = c(StatesList,Astate)}
}

# plotting the graphs for each state
# now we shall log the meddian and spread that was obtained
MeadianList = log10(MeadianList)
SpreadList = log10(SpreadList)
plot(MeadianList,SpreadList, col="orange")
LinearModel = lm(SpreadList~MeadianList)
abline(LinearModel,lty=4,col="green")
# Find the coeficients of the lm wee have drawn
coefficients(LinearModel)
LinearModel$coefficients[2]
# This value is approximately 0.914, which is equal to 0
# p =1-b that is, 1-0.92 = which is aproximatly 0
# so there is no power transform required for this, as its almost zero
# for the 0 = p, tukey gave log transform





