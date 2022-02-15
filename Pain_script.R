library(readxl)
Pain_Data <- read_excel("Desktop/Pain_Data.xlsx", 
                        sheet = "Sheet1")
View(Pain_Data)
attach(Pain_Data)
library(dplyr)
library(plyr)

Pain_Data$Sex <- as.factor(Pain_Data$Sex)
Pain_Data$Sex <- revalue(Pain_Data$Sex, c("1"="Male","2"="Female"))


Pain_Data$`Ethnic group` <- as.factor(Pain_Data$`Ethnic group`)
Pain_Data$`Ethnic group` <- revalue(Pain_Data$`Ethnic group`, c("1"="Hispanic",
                                                                "2"="Not Hispanic"))
Pain_Data$`Racial group` <- as.factor(Pain_Data$`Racial group`)
Pain_Data$`Racial group` <- revalue(Pain_Data$`Racial group`, c("5"="White","6"="Not answered"))

library(xlsx)
write.xlsx(Pain_Data, file = "Pain_Data.xlsx", sheetName="1")

plot(Pain_Data$Sex)

Pain_Data$Education <- as.factor(Pain_Data$Education)
Pain_Data$Education <- revalue(Pain_Data$Education, c("2"="Graduate","2,3"="Some Collage", "3"="Some College", "4"="Graduate school","5"="Some Post-Grad","6"="Comepleted Post Grad","7"="Prefer not to Answer"))

Pain_Data$Immigrant <- as.factor(Pain_Data$Immigrant)
Pain_Data$Immigrant <- revalue(Pain_Data$Immigrant, c("1"="Yes","2"="No"))

