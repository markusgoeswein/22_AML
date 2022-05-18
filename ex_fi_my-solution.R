set.seed(10)

df <- read.csv("extrapolation.csv")
df <- cbind(rep(1, 1000), df)

i_train <- sample(df[[2]], 700)

df_train <- df[i_train, ] 
df_test <- df[-i_train, ]
X <- as.matrix(df_train[,c(1, 3:6)])
y <- as.matrix(df_train[7])


tXX <- t(X) %*% X
tXy <- t(X) %*% y
beta <- solve(tXX, tXy)
rownames(beta)[1] <- "intercept"
beta


X_test <- as.matrix(df_test[, c(1, 3:6)])
y_test <- as.matrix(df_test[,7])
MSE <- 1/ncol(df_test) * sum((y_test - X_test %*% beta)^2)

pfi_name

for (i in seq_len(ncol(X))) {
  
}