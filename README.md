# arrdata

An R data package created for homework in reproducible
data management and sharing.

## Dataset

The package contains `rehab`, a fictional dataset with
20 participants and five variables:

- `id`: participant identifier
- `age`: age in years
- `weeks_sick_leave`: weeks on sick leave before rehabilitation
- `self_efficacy_start`: illustrative score at the start
- `self_efficacy_end`: illustrative score at the end

The scores range from 1 to 10, with higher values indicating
greater self-efficacy. They are not from a validated instrument.

All data are artificial and do not represent real patients.

## Installation

Install the package from GitHub:

```r
install.packages("remotes")
remotes::install_github("tonjejossie/arrdata")
```

## Usage

```r
library(arrdata)
head(rehab)
?rehab
```

## Data preparation

The script `data-raw/rehab.R` creates the fictional Excel
file, imports it using readxl, and saves the dataset in
the package using usethis.

To rerun the script, install readxl, writexl and usethis,
then run it from the package project root.

## License

CC BY 4.0.
