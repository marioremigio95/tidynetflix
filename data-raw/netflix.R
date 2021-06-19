## code to prepare `netflix` dataset goes here

# Carregar pacote
devtools::load_all(".")

# Salvar dados brutos
netflix <- atualizar_dados("data-raw/netflix.csv")

# Colocar no pacote
usethis::use_data(netflix, overwrite = TRUE)

