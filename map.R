library(maps)
map(database = "world", regions="Turkey", fill = TRUE, col="White")
data <- read.csv("facilities.csv",sep = ";")
df <- data.frame(data) 
head(df)
points(x = df$Boylam, y = df$Enlem, col = df$Renk, pch=".", cex = df$MW/10)
legend("bottomright", legend=c("Food", "Paper", "Chemical", "Metal", 
                               "Petrochemical", "Ceramic-glass", "Sugar",
                               "Textile"), fill = c("aquamarine4",
                                                 "bisque4", "red", "blue", 
                                                 "black", "purple", "coral3", 
                                                 "green"), pch=".", cex = 0.5)
text(x = df$Boylam, y = df$Enlem, df$Tesis, cex = df$MW/200, pos = 3, col = df$Renk)
