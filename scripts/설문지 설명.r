library(xlsx)
a1 <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문조사 자료 가공.xlsx", 1, rowIndex = c(11:13), colIndex = c(1:2), encoding = "UTF-8")
a2 <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문조사 자료 가공.xlsx", 1, rowIndex = c(1:4), colIndex = c(3:4), encoding = "UTF-8")
a3 <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문조사 자료 가공.xlsx", 1, rowIndex = c(1:4), colIndex = c(8:9), encoding = "UTF-8")
a4 <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문조사 자료 가공.xlsx", 1, rowIndex = c(1:10), colIndex = c(10:11), encoding = "UTF-8")
a5 <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문조사 자료 가공.xlsx", 1, rowIndex = c(1:6), colIndex = c(14:15), encoding = "UTF-8")
a6 <- read.xlsx("E:/대학과제/디지털금융의 이해/통신사/엑셀/설문조사 자료 가공.xlsx", 1, rowIndex = c(1:6), colIndex = c(16:17), encoding = "UTF-8")


#성별 파이그래프
gender <- c("남","여")
{pie(a1$값, labels = gender,
        main = "성별 비율",
        col = c("blue","red"),
        clockwise = T
)

  legend(-1.5,-0.7,
         c("남(61%)","여(39%)"),
         col = c("blue","red"),
         bty = "n" , pch = c(16,16), bg = "white")
}



#통신사별 파이그래프
company <- c("SKT","KT","LG U+")
{pie(a2$값,
    labels = company,
    main = "통신사 비율",
    col = c("red","skyblue","purple"),
    clockwise = T
)
legend(-1.5,-0.7,
       c("SKT","KT","LG U+"),
       col = c("red","skyblue","purple"),
       bty = "n", pch = c(16,16,16), bg = "white")
}

#가입년수 막대그래프
period <- c("1~5년","6~10년","10년이상")
barplot(height = a3$명,
        xlab = "가입년수",
        names = period,
        las = 1,
        main = "가입년수",
        col = "black",
        ylim = c(0,80)
)


#사용료에 따른 그래프
money <- c("3만미만","3~4만","4~5만","5~6만","6~7만","7~8만","8만~9만","9만~10만","10만 초과")
barplot(height = a4$응답자.수,
        las = 1,
        names = money,
        col = "gray",
        main = "사용금액",
        ylim = c(0,40)
        )

#부족한서비스
sv <- c("데이터","음성통화","문자","멤버쉽포인트","없음")
{pie(a5$명,
    labels = sv,
    col = rainbow(5),
    main = "부족한서비스 비율",
    clockwise = T)
  
  legend(-1.58,-0.46,
         sv,
         col = rainbow(5),
         bty = "n", pch = rep(16,5), bg = "white")
}

#남는서비스
enough <- c("데이터","음성통화","문자","멤버쉽포인트","없음")
{pie(a6$명,
     labels = enough,
     main = "남는서비스 비율",
     col = rainbow(5),
     clockwise = T)
  
  legend(-1.58,-0.46,
         enough,
         col = rainbow(5),
         bty = "n", pch = rep(16,5), bg = "white")
}
