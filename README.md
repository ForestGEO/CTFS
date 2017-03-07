<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/forestgeo/ctfs.svg?branch=master)](https://travis-ci.org/forestgeo/ctfs)

ctfs
====

The goal of `ctfs` is to provide tools for the analysis of forest dynamics. The target audience is the [ForestGEO](http://www.forestgeo.si.edu/) community.

Installation
------------

The original package is available [here](http://ctfs.si.edu/Public/CTFSRPackage/). Or install `ctfs` from GitHub with:

``` r
# insltall.packages("devtools")
devtools::install_github("forestgeo/ctfs")
```

To install from a private GitHub repository follow instructions in `?install_github`.

``` r
# To install from a private repo, use auth_token with a token
# from https://github.com/settings/tokens. You only need the
# repo scope. Best practice is to save your PAT in env var called
# GITHUB_PAT.
install_github("hadley/private", auth_token = "abc")
```

References
----------

For an in depth description of CTFS-ForestGEO, read:

    @article{anderson2015ctfs,
      title={CTFS-ForestGEO: a worldwide network monitoring forests in an era of global change},
      author={Anderson-Teixeira, Kristina J and Davies, Stuart J and Bennett, Amy C and Gonzalez-Akre, Erika B and Muller-Landau, Helene C and Joseph Wright, S and Abu Salim, Kamariah and Almeyda Zambrano, Ang{\'e}lica M and Alonso, Alfonso and Baltzer, Jennifer L and others},
      journal={Global Change Biology},
      volume={21},
      number={2},
      pages={528--549},
      year={2015},
      publisher={Wiley Online Library}
    }
