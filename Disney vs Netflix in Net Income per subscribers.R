library(readr)
net_income_per_subscribers <- read_csv("net income per subscribers.csv")
View(net_income_per_subscribers)

year <- net_income_per_subscribers$...1

# 安裝和載入 ggplot2 套件
install.packages("ggplot2")
library(ggplot2)

# 資料準備
data <- data.frame(
  Company = rep(c("Disney", "Netflix"), each = 7),
  Year = rep(c(2016:2022), times = 2),
  Net_Income = c(7.355372, 7.277389, 9.728965, 10.688541, -2.389432, 2.677930, 3.861957,
                 1.993688, 4.754129, 8.696027, 11.173116, 13.558648, 23.062278, 19.466879)
)

# 繪製長條圖
ggplot(data, aes(x = as.factor(Year), y = Net_Income, fill = Company)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Disney vs Netflix - Net Income (2016-2022)",
       x = "Year",
       y = "Net Income") +
  theme_minimal()



