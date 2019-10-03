require(xlsx)
tab <- read.xlsx("Diversidade_Equabilidade.xlsx", 1)
tab[is.na(tab)] <- 0
tab

args(diversidade)

diversidade(t(tab[,-1]), table = T)

