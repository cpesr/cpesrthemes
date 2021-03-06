% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_cpesr.R
\name{theme_cpesr_cap}
\alias{theme_cpesr_cap}
\title{theme_cpesr}
\usage{
theme_cpesr_cap(
  authors = NULL,
  camille = NULL,
  url = NULL,
  licence = NULL,
  source = NULL,
  base_family = NULL,
  ...
)
}
\arguments{
\item{authors}{a set of author names}

\item{camille}{add Camille Noûs as authors (default: TRUE)}

\item{url}{a reference url (default: cpesr.fr)}

\item{licence}{the licence (default: GPL-3.0)}

\item{source}{the source of data}

\item{base_family}{the font base family (default: Raleway)}

\item{...}{others arguments passed to theme_hc}
}
\value{

}
\description{
GGploth theme for the CPESR, adding a caption
}
\examples{
ggplot(kpiESR::esr, aes(x=Rentrée, y=kpi.ETU.P.effectif, fill=Type)) +
geom_boxplot() +
theme_cpesr(authors=c("Author One","Author Two"),
            camille=FALSE,
            licence="CC BY-SA",
             url="https://github.com/cpesr/cpesrthemes" )
}
