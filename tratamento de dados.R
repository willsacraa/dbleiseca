library(readr)
microdados <- read_csv("C:/Users/gabri/Downloads/tempo_deslocamento_casa_trabalho.csv")
View(microdados)

library(dplyr)

colnames(microdados)

Dados <- filter(microdados, `id_municipio` == 2927408)
View(Dados)

Dados <- filter(microdados, `ddd` == 71)
View(Dados)

write.table(Dados,file = "C:/Users/gabri/Downloads/meu_municipio/municipio_SSA.csv", sep=",")


a <-10
