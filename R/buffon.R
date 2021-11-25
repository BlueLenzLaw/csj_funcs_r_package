## 定义函数：
## n: 投掷次数（样本量）；L: 针的长度；a: 平行线间隔 (这里：L < a)
## m: 抛针相交的次数

buffon <- function(n, L, a){
  x <- runif(n, min=0, max=a) # 抛针竖直摆放与最近的平行线的长度
  theta <- runif(n, min=0, max=pi) # 抛针角度
  height <- L * sin(theta) # 抛针竖直投影距离
  m <- sum(height>=x) # 抛针与平行线相交，记录次数

  #估算pi
  pie <- 2 * L * n / (a * m)

  pie_cal <- c('pi估计'=pie) # 将结果保存
  return(pie_cal) # 打印结果
}
