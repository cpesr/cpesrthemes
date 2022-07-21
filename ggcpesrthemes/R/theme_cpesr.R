

#' spoiler_table
#'
#' @param df a dataframe or a tibble
#'
#' @return df formated with kable inside a spoiler tag working with github markdown
#' @export
#'
#' @examples
spoiler_table <- function(df) {
  cat("\n<details>\n")
  cat("  <summary>Voir les données</summary>\n\n")
  
  print(kableExtra::kable(df, format="pipe"))
  
  cat("\n\n</details>\n")
}


#' theme_cpesr
#'
#' ggplot theme for the CPESR work, based on theme_hc from ggthemes.
#'
#' @param base_family
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
theme_cpesr <- function(x_grid = TRUE, 
                        y_grid = TRUE, 
                        x_ticks = FALSE, 
                        y_ticks = FALSE,
                        minor_grid = TRUE,
                        base_family="Raleway", ...) {
  
  cpth <- ggplot2::theme_minimal(base_family=base_family, ...) + 
    ggplot2::theme(
      #axis.title.y = element_text(angle=90)),
      legend.position = "bottom"
    ) 
    if (!x_grid | x_ticks) cpth <- cpth + theme(panel.grid.major.x = element_blank(), panel.grid.minor.x = element_blank())
    if (x_ticks) cpth <- cpth + theme(axis.ticks.x = element_line(color="black"), panel.grid.minor.x = element_blank())
    if (!y_grid | y_ticks) cpth <- cpth + theme(panel.grid.major.y = element_blank(), panel.grid.minor.y = element_blank())
    if (y_ticks) cpth <- cpth + theme(axis.ticks.y = element_line(color="black"), panel.grid.minor.y = element_blank())
    if (!minor_grid) cpth <- cpth + theme(panel.grid.minor.x = element_blank(), panel.grid.minor.y = element_blank())
    
  return(cpth)
}


#' cpesr_cap
#'
#' Caption for CPESR
#'
#' @param authors a set of author names
#' @param camille add Camille Noûs as authors (default: TRUE)
#' @param url a reference url (default: cpesr.fr)
#' @param licence the licence (default: GPL-3.0)
#' @param source the source of data
#' @param base_family the font base family (default: Raleway)
#'
#' @return
#' @export
#'
#' @examples
#' ggplot(kpiESR::esr, aes(x=Rentrée, y=kpi.ETU.P.effectif, fill=Type)) +
#' geom_boxplot() +
#' cpesr_cap(authors=c("Author One","Author Two"),
#'           camille=FALSE,
#'           licence="CC BY-SA",
#'           url="https://github.com/cpesr/cpesrthemes" )
cpesr_cap <- function(authors=NULL,
                      camille=NULL,
                      url=NULL,
                      licence=NULL,
                      source=NULL,
                      base_family=NULL) {
  
  if(is.null(authors)) authors <- .theme_cpesr.env$authors
  if(is.null(camille)) camille <- .theme_cpesr.env$camille
  if(is.null(url)) url <- .theme_cpesr.env$url
  if(is.null(licence)) licence <- .theme_cpesr.env$licence
  if(is.null(source)) source <- .theme_cpesr.env$source
  if(is.null(base_family)) base_family <- .theme_cpesr.env$base_family
  
  if(camille) { authors <- c(authors, "Camille Noûs") }
  captxt = paste(
    paste(na.omit(authors), collapse=", "),
    "- CPESR",
    licence,
    url,
    ifelse(!is.na(source),paste0("\nSource : ", source),"") )
  
  return(list(labs(caption = captxt)))
}

#' theme_cpesr_cap
#'
#' ggplot theme for the CPESR, adding a caption
#'
#' @param authors a set of author names
#' @param camille add Camille Noûs as authors (default: TRUE)
#' @param url a reference url (default: cpesr.fr)
#' @param licence the licence (default: GPL-3.0)
#' @param source the source of data
#' @param base_family the font base family (default: Raleway)
#' @param ... other arguments passed to theme_hc
#'
#' @return
#' @export
#'
#' @examples
#' ggplot(kpiESR::esr, aes(x=Rentrée, y=kpi.ETU.P.effectif, fill=Type)) +
#' geom_boxplot() +
#' theme_cpesr_cap()
#' 
theme_cpesr_cap <- function(authors=NULL,
                            camille=NULL,
                            url=NULL,
                            licence=NULL,
                            source=NULL,
                            base_family=NULL,
                            ...) {
  return(
    list(
      theme_cpesr(base_family=base_family, ...),
      cpesr_cap(authors,camille,url,licence,source,base_family)
    )
  )
}

#' theme_cpesr_setup
#'
#' setting up global values for the CPESR theme
#'
#' @param authors a set of author names
#' @param camille add Camille Noûs as authors (default: TRUE)
#' @param url a referene url (default: cpesr.fr)
#' @param licence the licence (default: LO 2.0)
#' @param source the source of data
#' @param base_family the font base family (default: Raleway)
#'
#' @return
#' @export
#'
#' @examples
#' theme_cpesr_setup(authors=c("Author One","Author Two"),
#'                   camille=FALSE,
#'                   licence="CC BY-SA",
#'                   url="https://github.com/cpesr/cpesrthemes" )
theme_cpesr_setup <- function(authors=NA,
                              camille=TRUE,
                              url="cpesr.fr",
                              licence="LO 2.0",
                              source=NA,
                              base_family="Raleway") {
  .theme_cpesr.env$authors <- authors
  .theme_cpesr.env$camille <- camille
  .theme_cpesr.env$url <- url
  .theme_cpesr.env$licence <- licence
  .theme_cpesr.env$source <- source
  .theme_cpesr.env$base_family <- base_family
}

.theme_cpesr.env <- new.env(parent=emptyenv())
theme_cpesr_setup()
