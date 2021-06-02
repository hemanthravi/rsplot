

Sys.setlocale("LC_NUMERIC", "C")

library(ggplot2)


print("using ggplot and ggsave")
# save plot to file without using ggsave
p <- ggplot(mtcars, aes(mpg, wt)) + geom_point()

ggsave(file = "/output/plot_x3.jpeg", plot = p, width=5, height=5)


print("using plot and .png")
x <- seq(-pi,pi,0.3)
c_fileName <- file.path("/output/", paste0( "sin_plot_4", ".png"))
png(file=c_fileName,type=c("cairo-png"))
plot(x, sin(x))
dev.off()


print("capabilities: ##########")
capabilities()


print("sessionInfo: ##########")
sessionInfo()

