rm(list = ls())

item1 <- c('1001', 'Electronics','700')
item2 <- c('1002', 'DesktopSupplies','300')
item3 <- c('1003', 'OfficeSupplies','350')
item4 <- c('1004', 'USB','400')
item5 <- c('1005', 'CD Drive','800')

itemList = list(item1, item2, item3, item4, item5)

columns <- c('ItemCode', 'ItemCategory', 'ItemPrice')

itemData <- data.frame(matrix(nrow=0, ncol=length(columns)))

colnames(itemData) = columns
View(itemData)

for(item in itemList) {
  itemData[nrow(itemData)+1,] <- item
}
View(itemData)

sub_itemData_gt350 <- subset(itemData, itemData$ItemPrice >= 350)
View(sub_itemData_gt350)

sub_itemdata_Supplies<-subset(itemData,(itemData$ItemCategory=='OfficeSupplies')|(itemData$ItemCategory=='DesktopSupplies'))
View(sub_itemdata_Supplies)

itemDetailsColumn <- c('ItemCode', 'ItemQtyonHand', 'ItemReorderLvl')
itemDetails = data.frame(matrix(nrow=0, ncol=length(itemDetailsColumn)))
colnames(itemDetails) = itemDetailsColumn
View(itemDetails)

itemDetails1 <- c('1001', '15','2')
itemDetails2 <- c('1002', '10','2')
itemDetails3 <- c('1003', '25','4')
itemDetails4 <- c('1004', '12','5')
itemDetails5 <- c('1005', '5','1')

itemDetailsList = list(itemDetails1, itemDetails2, itemDetails3, itemDetails4, itemDetails5)

for(itemDetail in  itemDetailsList) {
  itemDetails[nrow(itemDetails)+1,] <- itemDetail
}
View(itemDetails)
 
merged <- merge(itemData, itemDetails, by="ItemCode")
merged

df1 <- data.frame(id = c(333,444,555,777,9999), Product = c("Laptop","Printer","Tablet","Desk","Chair"))

df2 <- data.frame(id= c(333,444,666,777,888), Price = c(1200,150,300,450,200))

inner_merged <- merge(df1, df2, by="id")
print(inner_merged)

left_merged <- merge(df1, df2, by="id", all.x = TRUE)
print(left_merged)

right_merged <- merge(df1, df2, by="id", all.y = TRUE)
print(right_merged)

outer_merged <- merge(df1, df2, by="id", all = TRUE)
print(outer_merged)