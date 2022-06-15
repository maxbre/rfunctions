# https://github.com/GuangchuangYu/hexSticker
library(hexSticker)
library(ggplot2)
library(ggridges)

df <- diamonds[1:100, c("color", "depth")]

p3<-ggplot(df, aes(x = depth, y = color, fill = color)) +
  geom_density_ridges(show.legend = FALSE, scale=2, alpha=0.8, linetype=0)+
  scale_fill_viridis_d()+
  theme_void()+
  theme_transparent()

p3

s3<-sticker(p3, 
           package = "rfunctions", 
           p_color = "#ea7ed4",
           p_size = 20, 
           p_x = 1,
           p_y = 1.5,
           s_x = 1,
           s_y = 0.8, 
           s_width = 1, 
           s_height = 1,
           spotlight = FALSE,
           l_width = 1.1,
           l_height = 1.1,
           l_alpha = 0.6,
           l_x = 0.48,
           l_y = 1.0,
           h_fill = "white",
           h_color = "#ea7ed4",
           filename="./rfunctions.png")


plot(s3)
