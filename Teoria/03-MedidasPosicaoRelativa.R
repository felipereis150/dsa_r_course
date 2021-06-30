# Estatística Básica

# Parte 3 - Medidas de Posição Relativa

# Cuidado: A Linguagem R é case sentitive

# definindo pasta de trabalho
setwd("C:/Users/felip/OneDrive/Documentos/PBI/DSA/PowerBI/Cap12/Teoria")

# Carregando o dataset
vendas <- read.csv("vendas.csv")


# Resumo dos dados
head(vendas)
tail(vendas)
View(vendas)

# Medidas de tendência central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

# Explorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01,0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # diferença entre Q1 e Q3
range(vendas$Valor)
diff(range(vendas$Valor))