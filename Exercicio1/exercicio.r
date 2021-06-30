# carregando o dataset
setwd("C:/Users/felip/OneDrive/Documentos/PBI/DSA/PowerBI/Cap12/Exercicio1")

# Exercício 1: Apresente um resumo de tipos de dados e estatísticas do dataset
getwd()
notas <- read.csv("Notas.csv")
View(notas)
summary(notas)

# Exercício 2: Qual a média de cada turma?
classAnotes <- mean(notas$TurmaA)
classBnotes <- mean(notas$TurmaB)
print(classAnotes)
print(classBnotes)

# Exercício 3: Qual das turmas apresentou maior variabilidade de notas

# A turma B apresentou pontos de mínimo e máximos mais próximos, portanto ela tem a menor variação - Resposta errada, deveria ter usado o método de desv.pd para identificar, embora tenha sido feito abaixo

# Exercício 4: Calcule o coeficiente de variação das 2 turmas
desv_pd_TurmaA <- sd(notas$TurmaA)
desv_pd_TurmaB <- sd(notas$TurmaB)

cvA <- (classAnotes / desv_pd_TurmaA) * 100
cvB <- (classBnotes / desv_pd_TurmaB) * 100
print(cvA)
print(cvB)

# Exercício 5: Qual nota aparece mais vezes em cada turma?
frqcy <- seq(0, 100, 10);frqcy
table(cut(notas$TurmaA, breaks = frqcy))
table(cut(notas$TurmaB, breaks = frqcy))

# A nota que mais aparece na turma A é 70-80 e na turma B 60-70

# Resolução
calculaModa <- function(v){
    uniqv <- unique(v)
    uniqv[which.max(tabulate(match(v, uniqv)))]
}
calculaModa(notas$TurmaA)
calculaModa(notas$TurmaB)

table(notas)
