#' Create folder and files for #TidyTuesday data viz
#' @param date_chr Date of #TidyTuesday in yyyy-mm-dd format.
#' @param readme Boolean indicating whether to also use README template.
#' @return a message if template file was successfully copied over
#' @export

use_tt_template <- function(date_chr = "2023-08-01",
                            readme = TRUE) {
  # check date in correct format
  if (is.na(as.Date(date_chr, format = "%Y-%m-%d"))) {
    stop("'date_chr' in incorrect format. Should be yyyy-mm-dd.")
  }
  # get year from date
  yr <- sub("-.*", "", date_chr)
  date_strip <- stringr::str_remove_all(date_chr, "-")
  # make folder
  new_folder <- file.path(yr, date_chr)
  if (!file.exists(new_folder)) {
    dir.create(new_folder, recursive = TRUE)
    message("Created new folder")
  }
  # make new file
  new_file <- file.path(yr, date_chr, paste0(date_strip, ".R"))
  if (!file.exists(new_file)) {
    file.create(new_file)
    message("Created '.R' file")
    # copy lines to .R file
    r_txt <- readLines(system.file("tt-template.R",
      package = "usefunc",
      mustWork = TRUE
    ))
    # replace placeholder text with variables
    r_txt <- gsub(
      pattern = "yr", replace = paste0("\"", yr, "\""), x = r_txt
    )
    r_txt <- gsub(
      pattern = "date_chr", replace = paste0("\"", date_chr, "\""), x = r_txt
    )
    r_txt <- gsub(
      pattern = "date_strip", replace = paste0("\"", date_strip, "\""), x = r_txt
    )
    # write to new file
    writeLines(r_txt, con = new_file)
    message("'.R' contents copied")
  }

  if (readme) {
    # make new README file
    new_readme <- file.path(yr, date_chr, "README.md")
    if (!file.exists(new_readme)) {
      file.create(new_readme)
      message("Created 'README.md' file")
      # copy lines to README file
      readme_txt <- readLines(system.file("tt-readme-template.md",
        package = "usefunc",
        mustWork = TRUE
      ))
      # replace placeholder text with variables
      readme_txt <- gsub(
        pattern = "yr", replace = yr, x = readme_txt
      )
      readme_txt <- gsub(
        pattern = "date_chr", replace = date_chr, x = readme_txt
      )
      readme_txt <- gsub(
        pattern = "date_strip", replace = date_strip, x = readme_txt
      )
      # write to file
      writeLines(readme_txt, con = new_readme)
      message("'README.md' contents copied")
    }
  }
  message("Template successfully copied!")
}
