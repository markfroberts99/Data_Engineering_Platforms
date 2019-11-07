# Importing Budget
library(readxl)
CPS_budget_overview <- read_excel("~/Desktop/Data Engineering Platforms/CPS budget overview.xlsx")
View(CPS_budget_overview)
CPS_budget_overview <- CPS_budget_overview[,1:5]
str(CPS_budget_overview)


#plotting budget by network
library(tidyverse)
ggplot(data=CPS_budget_overview, aes(x=CPS_budget_overview$Network...1, y=CPS_budget_overview$`FY2020 Budget`)) + 
  geom_point() + 
  geom_smooth(se=FALSE) + 
  ggtitle("CPS 2020 budget by Neighborhgood Network")

#import Progress Report Card
Chicago_Public_Schools_._Progress_Report_Cards__2011.2012_ <- read.csv("~/Desktop/Data Engineering Platforms/Chicago_Public_Schools_-_Progress_Report_Cards__2011-2012_.csv")
View(Chicago_Public_Schools_._Progress_Report_Cards__2011.2012_)

#import socioeconomic data                                                                      
Socioeconomic_data <- read.csv("~/Desktop/Data Engineering Platforms/Census_Data_-_Selected_socioeconomic_indicators_in_Chicago__2008___2012.csv")
View(Socioeconomic_data)

#plot hardship index for each community
ggplot(data=Socioeconomic_data, aes(x=Socioeconomic_data$Community.Area.Number, y=Socioeconomic_data$HARDSHIP.INDEX)) + 
  geom_point()
#plot hardship index vs income
ggplot(data=Socioeconomic_data, aes(x=HARDSHIP.INDEX, y=PER.CAPITA.INCOME)) + 
  geom_point() 

# correlation test for the two
cor.test(Socioeconomic_data$PER.CAPITA.INCOME, Socioeconomic_data$HARDSHIP.INDEX)

                                          