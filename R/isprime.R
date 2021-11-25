## 写一个函数isprime, 可以对任意的n, 返回其是否是质数

isprime <- function(n)
{
  for (k in 2: sqrt(n))
  {
    if (n%%k == 0){
      return(FALSE);
    }
  }

  return(TRUE)
}
