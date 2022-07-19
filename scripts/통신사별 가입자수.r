library(xlsx)
telecom <- read.xlsx("./이동전화 가입자수.xlsx",1, rowIndex = c(40:56), colIndex = c(1:5), encoding = "UTF-8")
str(telecom)

{
  plot(x = telecom$연도, y = telecom$SK텔레콤,
       type = "o",
       col = "red",
       xlab = "연도",
       ylab = "",
       las = 1,
       ylim = c(0,28000000))
  par(new=T)
  plot(x = telecom$연도, y = telecom$KT프리텔,
       type = "o",
       col = "blue",
       xlab = "연도",
       ylab = "",
       las = 1,
       ylim = c(0,28000000))
  par(new=T)
  plot(x = telecom$연도, y = telecom$LG텔레콤,
       type = "o",
       col = "pink",
       xlab = "연도",
       ylab = "",
       las = 1,
       ylim = c(0,28000000))
  par(new=T)
  plot(x = telecom$연도, y = telecom$기타,
       type = "o",
       col = "black",
       xlab = "연도",
       ylab = "",
       las = 1,
       ylim = c(0,28000000),
       main = "통신사별 가입자수"
       )
  par(new=T)
  
  legend(0,0,c("SKT","KT","LG U+","기타"),
         col = c("red","blue","pink","black"),
         bg = "white",
         pch = rep(16,4),
         bty = "n")
}  

