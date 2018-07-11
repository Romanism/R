# 1.3 R 들어가기

# 1.3.1 R 설치하기
# (1) go to the site called CRAN (Comprehensive R Archive Networks) http://www.r-project.org/
# (2) execute "Download R“
# (3) choose Korea http://cran.nexr.com/
# (4) click "Download for R Windows“
# (5) click "base“
# (6) click “Download R 3.3.1 for Windows”

# 1.3.2 R 사용법
# A. 주의할 점
# (1) case sensitive (대소문자 구분)
# (2) commands are seperated by ; oro new line
# (3) comments can be put anywhere starting with #
# (4) subsequent commands are made by + (더하기로 다음줄도 이어짐)

# B. 내장기능
# (1) help, example, demo
help(solve) # 도움말
example(solve) # 예제
demo(persp) # 데모기능

# (2) data : 내장되어 있는 자료파일을 불러올 수 있음
women # (height, weight, n=15)
stackloss # (Air.Flow, Water.Temp, Acid.Conc., stack.loss, n=21) 
faithful # (eruptions, waiting, n=272)
sleep # (extra, group, n=20)

# (3) library : 다양한 라이브러리 제공
# lattice : lattice graphics
# MASS : Modern Applied Statistics using S-Plus
# mgcv : generalized additive models
# nlme : mixed effects models
# nnet : neural networks and multinomial log-linear models - spatial : spatial statistics
# survival : survival analysis
library(help=survival)

# (4) Packages : libary의 모음집
# Tools - install packages - package설치


# 2.1 Vectors and assignment
x <- c(10.4, 5.6, 3.1, 6.4, 21.7) # 방법1
assign('x', c(10.4, 5.6, 3.1, 6.4, 21.7)) # 방법2
c(10.4, 5.6, 3.1, 6.4, 21.7) -> x # 방법3
1/x # global 선언
y <- c(x, 0, x); y

# 2.2 Vector arithmetic
15/7 # real
15 %/% 7 # integer part
15 %% 7 # reminder part
sum((x-mean(x))^2)/(length(x)-1) # variance공식
var(x) # variance
sqrt(-17) # NAN (Not a Number)

# 2.3 Generating regular sequences
s1 <- c(1:30) ; s1 # 1부터 30까지 정수
s2 <- seq(-5, 5, by = .2); s2 # -5부터 5까지 0.2 간격으로
s3 <- seq(length = 51, from = -5, by = .2); s3 # -5부터 0.2씩 증가하면서 51개 만들기
s4 <- rep(x, times = 5); s4 # x를 5번 반복 (1,2,3, 1,2,3..)
s5 <- rep(x, each = 5); s5 # x원소를 각각 5번 반복 (1,1, 2,2, 3,3)


# R에 내장되어 있는 자료 중 강좌에서 이용할 자료

# 1. faithful
# 자료설명 : 미국 Yellowstone 국립공원 내에 있는 여러 간헐천 중에서 Old Faithful Geyser 에서 수집된 자료로서 2개의 변수와 272개의 관측치로 구성 
# 변수 : eruptions (분출시간 (단위:분)), waiting (다음 분출될 때까지의 시간 (단위:분))

# 2. Stackloss
# 자료설명 : 어떤 화학공정에서 여러 환경변화에 따른 암모니아의 산화비율을 측정한 자료로 4개의 변수와 21개의 관측치로 구성
# 변수 : Air.Flow (공기 주입량), Water.Temp (물의 온도), Acid.Conc. (질소농도), stack.loss (암모니아 산화비율)