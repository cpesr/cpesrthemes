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

  - Juste le thème

<!-- end list -->

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr() 
```

![](README_files/figure-gfm/utilisation.simple-1.png)<!-- -->

  - Thème et caption par défaut

<!-- end list -->

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr_cap() 
```

![](README_files/figure-gfm/utilisation.cap-1.png)<!-- -->

  - Thème et caption personnalisés

<!-- end list -->

``` r
library(ggplot2)
library(ggcpesrthemes)
ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr_cap(authors=c("Author One","Author Two"), 
              camille=FALSE, 
              licence="CC BY-SA",
              url="https://github.com/cpesr/cpesrthemes" )
```

![](README_files/figure-gfm/utilisation.perso-1.png)<!-- -->

  - Thème et caption personnalisés globalement

<!-- end list -->

``` r
library(ggplot2)
library(ggcpesrthemes)

theme_cpesr_setup(authors=c("Author One","Author Two"), 
                  camille=FALSE, 
                  licence="CC BY-SA",
                  url="https://github.com/cpesr/cpesrthemes")

ggplot(esr, aes(x=Rentrée, y=Effectifs, color=Niveau, group=Niveau)) + 
  geom_line() + 
  theme_cpesr_cap()
```

![](README_files/figure-gfm/utilisation.glob-1.png)<!-- -->
