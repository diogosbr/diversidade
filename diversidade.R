diversidade =
  function(x,
           table = F,
           ntable = "diversity",
           base = exp(1)) {
    if ("vegan" %in% rownames(installed.packages()) == F) {
      install.packages("vegan", dependencies = T)
    }
    
    if ("xlsx" %in% rownames(installed.packages()) == F) {
      install.packages("xlsx")
    }
    
    require(vegan)
    require(xlsx)
    
    final = data.frame(matrix(nrow = length(row.names(x)), ncol = 4))
    colnames(final) = c("Shannon (H')",
                        "Equabilidade (J')",
                        "Espécies (S)",
                        "Abundância")
    row.names(final) = row.names(x)
    
    final[, 1] = diversity(x, base = base)
    final[, 2] = diversity(x, base = base) / log(specnumber(x), base = base)
    final[, 3] = specnumber(x)
    final[, 4] = rowSums(x)
    if (table == T) {
      write.xlsx(final, paste0(ntable, ".xlsx"))
    }
    return(final)
  }