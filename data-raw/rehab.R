# Create fictional practice data.
# These data do not describe real patients.
# The scores are illustrative, not a validated instrument.

fictional_data <- data.frame(
  id = 1:20,
  age = c(
    34, 48, 52, 29, 45, 57, 38, 41, 50, 33,
    46, 55, 31, 43, 59, 36, 49, 40, 54, 47
  ),
  weeks_sick_leave = c(
    12, 26, 40, 8, 20, 52, 16, 30, 44, 10,
    24, 48, 14, 32, 60, 18, 36, 22, 50, 28
  ),
  self_efficacy_start = c(
    4, 3, 5, 6, 4, 2, 5, 4, 3, 6,
    5, 3, 7, 4, 2, 6, 4, 5, 3, 5
  ),
  self_efficacy_end = c(
    6, 5, 5, 8, 7, 4, 7, 6, 5, 7,
    4, 5, 8, 6, 3, 8, 6, 5, 5, 7
  )
)

# Save the example source data as an Excel file.
writexl::write_xlsx(
  fictional_data,
  "data-raw/rehab.xlsx"
)

# Import the Excel file.
rehab <- readxl::read_excel("data-raw/rehab.xlsx")

# Store the ready-to-use dataset in the package.
usethis::use_data(rehab, overwrite = TRUE)
