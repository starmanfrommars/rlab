rm(list = ls())

data(mammals)
View(mammals)
pearson_corr <- cor(mammals$brain, mammals$body, method="pearson")
spearman_corr <- cor(mammmals$brain, mammals$body, method="spearman")
print(paste("Pearson Correlation Coefficient : ",pearson_corr))
print(paste("Spearman Correlation Coefficient : ",spearman_corr))

plot(mammals$body, mammals$brain, xlab="Body Weight", ylab="Brain Weight", main="Body Weight vs Brain Weight")

plot(log(mammals$body),log(mammals$brain), xlab="log(Body Weight)", ylab="log(Brain Weight)", main="log(Body Weight) vs log(Brain Weight")


