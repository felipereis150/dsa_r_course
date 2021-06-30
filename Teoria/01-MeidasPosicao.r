# Estatística Básica

# Parte 1 - Medidas de Posição

# Definindo a pasta de trabalho
setwd("C:/Users/felip/OneDrive/Documentos/PBI/DSA/PowerBI/Cap12/Teoria")
getwd()

# Carregando datase

vendas <- read.csv("vendas.csv")

# Resumo do datase
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Média
?mean
mean(vendas$Valor)
mean(vendas$Custo)

# Média Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

# Mediana
median(vendas$Valor)
median(vendas$Custo)

# Moda
# Criando uma função
moda <- function(v) {
    valor_unico <- unique(v)
    valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Obtendo a moda
resultado <- moda(vendas$Valor)
print(resultado)

resultado_custo <-moda(vendas$Custo)
print(resultado_custo)

# Criando gráfico de média de valor por estado com ggplot2
library(ggplot2)

# Cria o grafico
ggplot(vendas) +
    stat_summary(aes(x = Estado,
                    y = Valor),
                    fun = mean,
                    geom = "bar",
                    fill = "lightgreen",
                    col = "grey50") +
    labs(title = "Média de valor por estado")

