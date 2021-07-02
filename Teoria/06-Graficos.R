# Estatisticas Básica

# Parte 5 - Gráficos

# Gráficos em R - BarPlot, Pie Chart, Line Chart, Scatter Plot, Histograma e Treemap
# r-graph-gallery.com

# Definindo pasta de trabalho
setwd("C:/Users/felip/OneDrive/Documentos/PBI/DSA/PowerBI/Cap12/Teoria")
getwd()

# Dados
vetor_total_resultados = c(3, 12, 5, 18, 45)
names(vetor_total_resultados) = c("A", "B", "C", "D", "E")
vetor_total_resultados

##### Barplot #####
barplot(vetor_total_resultados)
barplot(vetor_total_resultados, col = c(1,2,3,4,5))

# Salvando o gráfico em disco
png("barplot.png", width = 1920, height = 1980)
barplot(vetor_total_resultados,
    col = rgb(0.5, 0.1, 0.6, 0.6),
    xlab = "Categorias",
    ylab = "Valores",
    main = "Barplot em R",
    ylim = c(0,60)
)
dev.off()

# Ggplot2
library(ggplot2)
View(mtcars)

# Barplot
ggplot(mtcars, aes(x = as.factor(cyl))) + 
    geom_bar() + 
    scale_fill_manual(values = c("red", "green", "blue"))

# criando dados dummy (ficticios)
dados - t.data.frame(group = c("A", "B", "C", "D"), value = c(33,62,56,67))
