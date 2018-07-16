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