.rs.restartR()
rm(list = ls()) #Comando para apagar tudo que estiver na memória 
cat("\014") #Serve para limpar o console
#install.packages("tidyverse")
library(tidyverse)
library(data.table)
#setwd("~/github/DadosCenso2022")
url <- "~/github/DadosCenso2022/Agregados_por_municipios_alfabetizacao_BR.csv"
dt <- fread(url,
            encoding = "Latin-1", 
            sep = ";",
            header = TRUE, 
            nrows = 1000)

#str_trim() #utilizada para remover espaços em branco
#str(dt)
dt$NM_MUN<-str_trim(dt$NM_MUN) 
dt$NM_MUN<-str_to_upper(dt$NM_MUN) #transformar em caixa alta
dt$NM_MUN<-rm_accent(dt$NM_MUN) #remove acentos das colunas
