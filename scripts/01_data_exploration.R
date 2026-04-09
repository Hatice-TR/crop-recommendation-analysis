# ================================================
# CROP RECOMMENDATION ANALYSIS
# Adım 1: Veriyi Yükle ve Tanı
# ================================================

# Kütüphaneleri yükle
library(tidyverse)

# Veriyi oku
df <- read.csv("data/Crop_recommendation.csv")

# ---- VERİYİ TANIYALIM ----

# Kaç satır, kaç sütun?
dim(df)

# Sütun isimleri ve veri tipleri
str(df)

# İlk 6 satır
head(df)

# Özet istatistikler (min, max, ortalama...)
summary(df)

# Eksik veri var mı?
colSums(is.na(df))

# Kaç farklı ürün (label) var?
unique(df$label)