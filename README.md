cpesrthemes
================

Collections d’aides pour la mise en forme des travaux de la CPESR.

## ggcpesrthemes

Package R pour la production de graphiques.

### Installation

``` r
devtools::install_github("cpesr/cpesrthemes", subdir="ggcpesrthemes")
```

``` r
library(ggplot2)
library(ggcpesrthemes)
```

### `spoiler_table`

``` r
library(ggplot2)
library(ggcpesrthemes)
spoiler_table(esr)
```

<details>
<summary>
Voir les données
</summary>

| Rentrée | kpi                | Effectifs | Niveau |
|:--------|:-------------------|----------:|:-------|
| 2013    | kpi.ETU.S.cycle1_L |   2678680 | L      |
| 2013    | kpi.ETU.S.cycle2_M |   1769133 | M      |
| 2013    | kpi.ETU.S.cycle3_D |    201249 | D      |
| 2014    | kpi.ETU.S.cycle1_L |   2735951 | L      |
| 2014    | kpi.ETU.S.cycle2_M |   1809665 | M      |
| 2014    | kpi.ETU.S.cycle3_D |    198229 | D      |
| 2015    | kpi.ETU.S.cycle1_L |   2814916 | L      |
| 2015    | kpi.ETU.S.cycle2_M |   1863416 | M      |
| 2015    | kpi.ETU.S.cycle3_D |    195325 | D      |
| 2016    | kpi.ETU.S.cycle1_L |   2863364 | L      |
| 2016    | kpi.ETU.S.cycle2_M |   1876887 | M      |
| 2016    | kpi.ETU.S.cycle3_D |    194774 | D      |
| 2017    | kpi.ETU.S.cycle1_L |   2902301 | L      |
| 2017    | kpi.ETU.S.cycle2_M |   1889077 | M      |
| 2017    | kpi.ETU.S.cycle3_D |    189162 | D      |
| 2018    | kpi.ETU.S.cycle1_L |   2977309 | L      |
| 2018    | kpi.ETU.S.cycle2_M |   1906538 | M      |
| 2018    | kpi.ETU.S.cycle3_D |    186130 | D      |
| 2019    | kpi.ETU.S.cycle1_L |   3265132 | L      |
| 2019    | kpi.ETU.S.cycle2_M |   1959020 | M      |
| 2019    | kpi.ETU.S.cycle3_D |    189492 | D      |
| 2020    | kpi.ETU.S.cycle1_L |   3340395 | L      |
| 2020    | kpi.ETU.S.cycle2_M |   1971658 | M      |
| 2020    | kpi.ETU.S.cycle3_D |    186084 | D      |

</details>

### `theme_cpesr`

-   Juste le thème

``` r
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
