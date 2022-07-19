install.packages("xlsx")
library(xlsx)
gender <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문지조사.xlsx", 1 ,rowIndex = c(1:3), colIndex = c(1:2), encoding = "UTF-8")
gender
age <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문지조사.xlsx", 1 ,rowIndex = c(1:9), colIndex = c(3:4), encoding = "UTF-8")
age
job <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문지조사.xlsx", 1 ,rowIndex = c(1:3), colIndex = c(5:6), encoding = "UTF-8")
job
registeration <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문지조사.xlsx", 1 ,rowIndex = c(1:5), colIndex = c(7:8), encoding = "UTF-8")
registeration
money <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문지조사.xlsx", 1 ,rowIndex = c(1:8), colIndex = c(9:10), encoding = "UTF-8")
money
lesssv <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문지조사.xlsx", 1 ,rowIndex = c(1:6), colIndex = c(11:12), encoding = "UTF-8")
lesssv
moresv <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문지조사.xlsx", 1 ,rowIndex = c(1:6), colIndex = c(13:14), encoding = "UTF-8")
moresv

result <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/통신사별 요금제 사용 실태 조사(수정).xlsx",1, rowIndex = c(1:134), colIndex = c(2:9), encoding = "UTF-8")
glm(부족한서비스 ~ 성별+연령+직업+통신사+가입년수+사용료+남는서비스,data = result)

