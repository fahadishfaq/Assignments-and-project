
library(XML)


fileURL <- "http://www.whatmobile.com.pk/lookup.php"

doc <- htmlTreeParse(fileURL,  useInternal =TRUE )

title <- xpathSApply(doc,"//a[@class='BiggerText']",xmlValue)
title

price <- xpathSApply(doc, "//span[@class='PriceFont']",xmlValue)
price

dfrm <- data.frame(title = title , price = price)
write.csv(dfrm , file="data.csv")

grep(, file$title)