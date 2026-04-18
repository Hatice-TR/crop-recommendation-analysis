# 1. Kütüphaneleri yükle
if(!require(tidyverse)) install.packages("tidyverse")
library(tidyverse)
library(lubridate) # Tarih işlemleri için

# 2. Veriyi oku (Dosya yolunu kendi bilgisayarına göre düzenle)
# Örnek: df <- read_csv("C:/Users/Kullanici/Desktop/yeni_proje/train.csv")
df <- read_csv("train.csv") 

# 3. Veriye ilk bakış
summary(df)
glimpse(df)

# Tırnak içindeki yolu kendi bilgisayarındaki tam yol ile değiştir
setwd("C:/Users/hatic/Desktop/yeni_proje")

# Sonra verini oku
df <- read_csv("train.csv")

library(tidyverse)

# Veriyi oku
df <- read_csv("train.csv")

# Verinin ilk 6 satırına ve sütun isimlerine bak
head(df)



library(tidyverse)
library(randomForest)
library(caret)

df <- read.csv("data/Crop_recommendation.csv")
df$label <- as.factor(df$label)

set.seed(42)
index <- createDataPartition(df$label, p = 0.8, list = FALSE)
train <- df[index, ]
test  <- df[-index, ]

model <- randomForest(label ~ ., data = train, ntree = 500)
predictions <- predict(model, test)
accuracy <- mean(predictions == test$label)
cat("Model Dogrulugu:", round(accuracy * 100, 2), "%\n")












