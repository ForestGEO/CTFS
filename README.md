<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/forestgeo/ctfs.svg?branch=master)](https://travis-ci.org/forestgeo/ctfs)

ctfs
====

The goal of `ctfs` is to provide tools for the analysis of forest dynamics. The target audience is the [ForestGEO](http://www.forestgeo.si.edu/) community.

Installation
------------

-   The original package is available [here](http://ctfs.si.edu/Public/CTFSRPackage/).

-   Or install `ctfs` from GitHub with:

``` r
# insltall.packages("devtools")
# Install branch dev
devtools::install_github("forestgeo/ctfs", ref = "dev")
```

To install from a private GitHub repository follow instructions in `?install_github`.

``` r
# To install from a private repo, use auth_token with a token
# from https://github.com/settings/tokens. You only need the
# repo scope. Best practice is to save your PAT in env var called
# GITHUB_PAT.
install_github("hadley/private", auth_token = "abc")
```

Alternatively, download the file `ctfs_<VERSION>.tar` from [this Google Drive](https://drive.google.com/file/d/0B5fCyFlg2t4pVGl0Zmp0QTVQZTQ/view) and install from the Packages tab of RStudio as shown below, then run `library(ctfs)`.

![](https://cloud.githubusercontent.com/assets/5856545/23679709/c6d664ac-0356-11e7-8dd3-c6470359538a.png)

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
