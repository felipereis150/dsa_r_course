# Estatística Básica

# Parte 4 - Tabela de Frequência

# Definindo pasta de trabalho
setwd("C:/Users/felip/OneDrive/Documentos/PBI/DSA/PowerBI/Cap12/Teoria")
getwd()

# Carregando os dados

dados <- read.table("Usuarios.csv",
    dec = ".",
    sep = ",",
    h = T
)

# Visualizando e sumarizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
mean(dados$grau_instrucao)

# Tabela de frequências absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de frequências relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Porcentagem 

