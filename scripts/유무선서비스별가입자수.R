service <- read.xlsx("./이동전화 가입자수.xlsx",1, rowIndex = c(20:36), colIndex = c(1:7), encoding = "UTF-8")
service
year <- service$연도
{plot(x= year, y= service$시내전화,
     type = "o",
     col = "yellow",
     ylab = "",
     xlab = "연도",
     las = 1,
     ylim = c(0,60000000))
par(new=T)
plot(x= year, y= service$이동전화,
     type = "o",
     col = "red",
     ylab = "",
     xlab = "연도",
     las = 1,
     ylim = c(0,60000000))
par(new=T)
plot(x= year, y= service$와이브로,
     type = "o",
     col = "blue",
     ylab = "",
     xlab = "연도",
     las = 1,
     ylim = c(0,60000000))
par(new=T)
plot(x= year, y= service$무선호출,
     type = "o",
     col = "green",
     ylab = "",
     xlab = "연도",
     las = 1,
     ylim = c(0,60000000))
par(new=T)
plot(x= year, y= service$TRS,
     type = "o",
     col = "gray",
     ylab = "",
     xlab = "연도",
     las = 1,
     ylim = c(0,60000000))
par(new=T)
plot(x= year, y= service$무선데이터,
     type = "o",
     col = "brown",
     ylab = "",
     xlab = "연도",
     las = 1,
     ylim = c(0,60000000),
     main = "유무선 서비스별 가입자수")

legend(1,0,
       c("시내전화","이동전화","와이브로","무선호출","TRS","무선데이터"),
       col = c("yellow","red","blue","green","gray","brown"),
       pch = rep(6,8),
       bty = "n",
       bg = "white") 
}

