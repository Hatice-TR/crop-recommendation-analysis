# ================================================
# ADIM 3: KESIFSEL VERI ANALIZI (EDA)
# ================================================

library(tidyverse)

df <- read.csv("data/Crop_recommendation.csv")

# -----------------------------------------------
# GRAFIK 1: Her urunden kacar satir var?
# -----------------------------------------------
ggplot(df, aes(x = reorder(label, label, length))) +
  geom_bar(fill = "#2ecc71") +
  coord_flip() +
  labs(title = "Urun Basina Kayit Sayisi",
       x = "Urun", y = "Adet") +
  theme_minimal()

ggsave("output/01_urun_dagilimi.png", width = 8, height = 6)

# -----------------------------------------------
# GRAFIK 2: Sicaklik dagilimi - urune gore
# -----------------------------------------------
ggplot(df, aes(x = reorder(label, temperature, median), 
               y = temperature, fill = label)) +
  geom_boxplot(show.legend = FALSE) +
  coord_flip() +
  labs(title = "Urunlere Gore Sicaklik Dagilimi",
       x = "Urun", y = "Sicaklik (C)") +
  theme_minimal()

ggsave("output/02_sicaklik_dagilimi.png", width = 8, height = 6)

# -----------------------------------------------
# GRAFIK 3: pH ve Yagis iliskisi
# -----------------------------------------------
ggplot(df, aes(x = ph, y = rainfall, color = label)) +
  geom_point(alpha = 0.5, size = 1.5) +
  labs(title = "pH ve Yagis Iliskisi",
       x = "pH", y = "Yagis (mm)") +
  theme_minimal() +
  theme(legend.position = "bottom",
        legend.text = element_text(size = 7))




git status




ggsave("output/03_ph_yagis.png", width = 9, height = 7)