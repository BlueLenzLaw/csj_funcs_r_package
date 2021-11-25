leave_one_out <- function(X, Y)
{
  result_mse = rep(0, nrow(X))

  for (i in (1:nrow(X))){
    train_X = cbind(1, X[-i,])
    test_X = c(1, X[i,])
    train_Y = Y[-i]
    test_Y = Y[i]

    beta = solve(t(train_X)%*%train_X,t(train_X)%*%train_Y)
    predict_Y = test_X %*% beta
    #print(i)
    result_mse[i] = (predict_Y - test_Y)^2
  }

  return(mean(result_mse))
}
