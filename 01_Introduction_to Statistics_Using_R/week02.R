# 2. 자료의 정리

# 2.1 자료의 종류
# DATUM : 자료, 정보등의 의미
# DATA : DATUM의 복수형
# 통계학이란 자료라는 재료를 이용하여 여러가지 요리를 만들어내는 것과 같음

# 2.1.1 양적자료 : 자료 그 자체가 숫자와 일대일로 대응
# 1) 연속형 자료 : 일정구간의 실수값을 모두 취할 수 있는 자료 ex) 혈압, 몸무게
# 2) 이산형 자료 : 정수 값을 취하는 자료 ex) 어느 학급의 여학생 수, 연간 결혼 건수

# 2.1.2 질적자료 : 자료 그 자체가 숫자의 개념을 가지는 것이 아닌 구분하는 개념을 가짐
# 1) 명목형 자료 : 구분을 위해 숫자를 대응시킨 자료 ex) 남(1), 여(0)
# 2) 순서형 자료 : 범주들이 순서의 개념을 가지는 자료 ex) 상(1), 중(2), 하(3)


# 2.2 표와 그래프

# 2.1.1 양적자료 : 히스토그램 (Histogram), 줄기-잎 그림
# 1) 히스토그램 (Histogram)
hist(faithful$waiting)

# 2) 줄기-잎 그림
stem(faithful$waiting)

# 2.1.2 질적자료 : 도수분포표 (Frequency Table), 파이차트 (Pie Chart)
# 1) 도수분포표 (Frequency Table)
a <- rep('A', 1520) 
b <- rep('B',770) 
c <- rep('C',510)
x <- c(a,b,c) # a,b,c로 구성되는 벡터를 생성
table(x)

y <- as.matrix(table(x)) # 행렬형태로 변환
freq <- y[,1] # [,1] - column, [1,] - row
relative_freq <- freq/sum(y)
z <- cbind(freq, relative_freq); z# cbind - column들끼리 묶기

# 2) 파이차트 (Pie Chart)
x <- c(1520, 770, 510)
lab <- c('A', 'B', 'C')
y <- round(x/sum(x)*100, digits=1)
w <- paste(lab, '(', y, '%', ')')
pie(x, labels=w, main='Pie Chart')

# 예제 : 30페이지로 이루어진 보고서에서 각 페이지당 오자의 개수
x <- c(1,1,1,3,0,0,1,1,1,0,2,2,0,0,0,1,2,1,2,0,0,1,6,4,3,3,1,2,4,0) 
y <- as.matrix(table(x))
freq <- y[,1]
rel_freq <- freq/sum(freq)
csum <- cumsum(freq) # 누적도수
c_rel_freq <- csum/sum(freq)
z <- cbind(freq, rel_freq, csum, c_rel_freq); z
