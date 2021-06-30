# Estatistica Basica

# Parte 2 - Medidsa de Dispersão

# Definindo a pasta de trabalho

setwd("C:/Users/felip/OneDrive/Documentos/PBI/DSA/PowerBI/Cap12/Teoria")

#Carregando dataset

vendas <- read.csv("vendas.csv")

#Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Variância
var(vendas$Valor)

# Desv. padrão
sd(vendas$Valor)

