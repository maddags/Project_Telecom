library(xlsx)
library(ggplot2)
rs <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/통신사별 요금제(범주형 데이터).xlsx", 1, rowIndex = c(1:125), colIndex = c(2:9), encoding = "UTF-8")
rs

summary(glm(성별 ~ 연령+통신사+직업+가입년수+사용료+부족한서비스+남는서비스, data = rs))
summary(glm(연령 ~ 성별+통신사+직업+가입년수+사용료+부족한서비스+남는서비스, data = rs))
summary(glm(직업 ~ 성별+연령+통신사+가입년수+사용료+부족한서비스+남는서비스, data = rs))
summary(glm(통신사 ~ 성별+연령+직업+가입년수+사용료+부족한서비스+남는서비스, data = rs))
summary(glm(가입년수 ~ 성별+연령+직업+통신사+사용료+부족한서비스+남는서비스, data = rs))
summary(glm(사용료 ~ 성별+연령+직업+통신사+가입년수+부족한서비스+남는서비스, data = rs))
summary(glm(부족한서비스 ~ 성별+연령+직업+통신사+가입년수+사용료+남는서비스, data = rs))
summary(glm(남는서비스 ~ 성별+연령+직업+통신사+가입년수+사용료+부족한서비스, data = rs))




