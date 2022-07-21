cpesrthemes
================

Collections d’aides pour la mise en forme des travaux de la CPESR.

## ggcpesrthemes

Package R pour la production de graphiques.

### Installation

``` r
devtools::install_github("cpesr/cpesrthemes", subdir="ggcpesrthemes")
```

### Utilisation

-   Juste le thème

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr() 
```

![](README_files/figure-gfm/utilisation.simple-1.png)<!-- -->

-   Thème et caption par défaut

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr_cap() 
```

![](README_files/figure-gfm/utilisation.cap-1.png)<!-- -->

-   Thème et caption personnalisés

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr_cap(authors=c("Author One","Author Two"), 
              camille=FALSE, 
              licence="CC BY-SA",
              url="https://github.com/cpesr/cpesrthemes",
              source="https://data.enseignementsup-recherche.gouv.fr")
```

![](README_files/figure-gfm/utilisation.perso-1.png)<!-- -->

-   Thème et caption personnalisés globalement

``` r
library(ggplot2)
library(ggcpesrthemes)

theme_cpesr_setup(authors=c("Author One","Author Two"), 
                  camille=FALSE, 
                  licence="CC BY-SA",
                  url="https://github.com/cpesr/cpesrthemes",
                  source="https://data.enseignementsup-recherche.gouv.fr")

ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr_cap()
```

![](README_files/figure-gfm/utilisation.glob-1.png)<!-- -->

### Customization

-   `x_grid = FALSE`

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr(x_grid = FALSE) 
```

![](README_files/figure-gfm/x_grid-1.png)<!-- -->

-   `x_ticks = TRUE`

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr(x_ticks = TRUE) 
```

![](README_files/figure-gfm/x_ticks-1.png)<!-- -->

-   `y_grid = FALSE`

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr(y_grid = FALSE) 
```

![](README_files/figure-gfm/y_grid-1.png)<!-- -->

-   `y_ticks = TRUE`

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr(y_ticks = TRUE) 
```

![](README_files/figure-gfm/y_ticks-1.png)<!-- -->

-   `minor_grid = FALSE`

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr(minor_grid = FALSE) 
```

![](README_files/figure-gfm/minor_panel-1.png)<!-- -->
