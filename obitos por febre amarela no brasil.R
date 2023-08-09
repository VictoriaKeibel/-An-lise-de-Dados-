subset_df <- data.frame(
  uf_lpi = c("TO", "SP", "RS", "SC", "PR", "RO", "RJ", "PA", "MT", "MS", "MG", "GO", "ES", "DF", "BA", "AM", "AC"),
  obitos = c(10, 248, 9, 7, 2, 2, 105, 37, 17, 5, 375, 51, 81, 8, 3, 19, 1)
)

ggplot(subset_df, aes(x = uf_lpi, y = obitos, fill = obitos)) +
  geom_tile() +
  labs(title = " Óbitos de febre amarela por região (1994 a 2021)", x = "Estado", y = "Óbitos", fill = "Óbitos") +
  scale_fill_gradient(low = "blue", high = "red") +
  theme_minimal()

 
#grafico de barras

subset_df <- data.frame(
  uf_lpi = c("TO", "SP", "RS", "SC", "PR", "RO", "RJ", "PA", "MT", "MS", "MG", "GO", "ES", "DF", "BA", "AM", "AC"),
  obitos = c(10, 248, 9, 7, 2, 2, 105, 37, 17, 5, 375, 51, 81, 8, 3, 19, 1)
)

ggplot(subset_df, aes(x = uf_lpi, y = obitos, fill = uf_lpi)) +
  geom_bar(stat = "identity") +
  labs(title = "Óbitos de febre amarela por região (1994 a 2021)", x = "Estados", y = "Óbitos", fill = "Estados") +
  theme_minimal()

#grafico pizza



subset_df <- data.frame(
  uf_lpi = c("TO", "SP", "RS", "SC", "PR", "RO", "RJ", "PA", "MT", "MS", "MG", "GO", "ES", "DF", "BA", "AM", "AC"),
  obitos = c(10, 248, 9, 7, 2, 2, 105, 37, 17, 5, 375, 51, 81, 8, 3, 19, 1)
)

ggplot(subset_df, aes(x = "", y = obitos, fill = uf_lpi)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Óbitos de febre amarela por região (1994 a 2021)", fill = "Estados") +
  scale_fill_discrete(name = "Estados") +
  theme_void()


#grafico pizza final
subset_df <- data.frame(
  uf_lpi = c("TO", "SP", "RS", "SC", "PR", "RO", "RJ", "PA", "MT", "MS", "MG", "GO", "ES", "DF", "BA", "AM", "AC"),
  obitos = c(10, 248, 9, 7, 2, 2, 105, 37, 17, 5, 375, 51, 81, 8, 3, 19, 1)
)

subset_df$uf_obitos <- paste(subset_df$uf_lpi, " (", subset_df$obitos, ")")

ggplot(subset_df, aes(x = "", y = obitos, fill = uf_obitos)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Óbitos por febre amarela no Brasil (1994 a 2021)", fill = "Estado") +
  scale_fill_discrete(name = "Óbitos por Estado") +
  theme_void()
  
