
#' Atualizar base de dados do Tidytuesday
#'
#' Ler dados da Tidytuesday de 20/04/2021, salvando em um arquivo CSV conforme
#' o argumento `file`.
#'
#' @param file caminho para salvar a base (deve ser CSV)
#' @param ... Outros argumentos passados para [readr::write_csv()]
#'
#' @return Invisivel, a base atualizada
#'
#' @export
atualizar_dados <- function(file, ...) {
  netflix_titles <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-04-20/netflix_titles.csv')
  readr::write_csv(netflix_titles, file, ...)
}
