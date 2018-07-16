# 5. 통계적 추론

# 5.1 점추정

# 5.1.1 통계적 추론
# 모집단으로부터 표본을 추출하여 모집단의 특성을 나타내는 모수에 대한 여러가지 정보를 얻기 위한 일련의 과정
# 통계적 추론 = 추정(estimation) + 가설검정(test of hypotheses)
# 추정 = 점추정(point estimation) + 구간추정(interval estimation)
# 어떤 모수 theta에 대한 점 추정치 theta_hat = theta_hat(X1, ..., Xn) = theta를 만족하려면 theta_hat은 theta에 대한 불편추정치(unbiased estimator)라 부름

# 1) E(Xbar) = μ (Xbar는 μ에 대한 불편추정치)
# 2) Var(Xbar) = σ^2/n
# 3) s.d(Xbar) = σ/sqrt(n)
# 4) s.d(Xbar)의 추정값 = s.e(Xbar) = s/sqrt(n) : 표준 오차(standard error)

# 5.1.2 모분산 σ^2에 대한 점 추정치 s^2의 성질
# E(s^2) = σ^2 - 즉, s^2은 σ^2에 대한 불편추정치

# 5.1.3 모비율 p에 대한 점 추정치 phat의 성질
# 임의 표본 X1, ..., Xn이 성공확률 p인 베르누이 시행을 따를 경우 p에 대한 점 추정치 역시 표본평균을 사용하며
# X = sum(xi) ~ B(n, p)이므로 점 추정치는 phat = X/n


# 5.2 구간추정1. 대표본

# 모수 theta에 대한 (1-a)% (eks, 0<a<1)신뢰구간
# P(L(theta_hat) < theta < U(theta_hat)) = 1 - a를 만족하는 구간 (L(theta_hat), U(theta_hat))
# 참고 : 1 - a는 신뢰수준(level of confidence)이라 하며, 흔히 0.01, 0.05, 0.1을 가짐
# a = 0.01 = 99% 신뢰구간
# a = 0.05 = 95% 신뢰구간
# a = 0.10 = 90% 신뢰구간

# 일반적으로 모수 theta에 대한 점 추정치를 theta_hat이라 하면,
# 모수 theta에 대한 100(1-a)%의 근사적 신뢰구간은
# theta_hat ± Za/2*s.e.(theta_hat)으로 표현 가능


# 5.3 구간추정2. 정규 모집단
# 표본의 크기가 작을 경우(소표본) 구간추정
# 소표본인 경우에는 임의표본 X1, ..., Xn이 반드시 정규분표 N(μ,σ^2)를 따른다는 가정이 필요
# a를 모를 경우, 추정치 s를 대입한 (xbar - μ) / (s/sqrt(n))

# student's t-분포:
# 임의표본 X1, ..., Xn이 정규분포를 따를 경우
# T = (xbar - μ) / (s/sqrt(n)는 자유도 n-1인 T분포를 따름
# T ~ t(n-1)로 표현
# 자유도 = 관측치수 - 제약조건의 개수
# T분포에서 제약조건은 Xbar임, 그 이유는 표본분산을 구하기 위해선 Xbar를 알아야 하기 때문에 Xbar를 계산하면서 자유도 하나를 잃게됨
# T분포는 0에 대해 대칭
# d.f가 커지면 N(0,1)에 가까워짐
# T-분포의 꼬리는 N(0,1)보다 더 두껍다 (n-1로 나누기때문에 분산이 더 크다)
# 모평균 μ에 대한 100(1-a)%의 신뢰구간
# Xbar ± ta/2*s/sqrt(n)