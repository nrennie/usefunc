#' Create folder and files for #TidyTuesday data viz
#' @param date_chr Date of #TidyTuesday in yyyy-mm-dd format.
#' @param lang Language, either `"R"`, `"Python"`, or `"D3"`.
#' @param readme Boolean indicating whether to also use README template.
#' @return a message if template file was successfully copied over
#' @export

use_tt_template <- function(date_chr = "2023-08-01",
                            lang = "R",
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
  if (lang == "R") {
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
        pattern = "yr",
        replacement = paste0("\"", yr, "\""),
        x = r_txt
      )
      r_txt <- gsub(
        pattern = "date_chr",
        replacement = paste0("\"", date_chr, "\""),
        x = r_txt
      )
      r_txt <- gsub(
        pattern = "date_strip",
        replacement = paste0("\"", date_strip, "\""),
        x = r_txt
      )
      # write to new file
      writeLines(r_txt, con = new_file)
      message("'.R' contents copied")
    }
  } else if (lang == "Python") {
    new_file <- file.path(yr, date_chr, paste0(date_strip, ".py"))
    if (!file.exists(new_file)) {
      file.create(new_file)
      message("Created '.py' file")
      # copy lines to .py file
      r_txt <- readLines(system.file("tt-template.py",
        package = "usefunc",
        mustWork = TRUE
      ))
      # replace placeholder text with variables
      r_txt <- gsub(
        pattern = "yr",
        replacement = paste0("\"", yr, "\""),
        x = r_txt
      )
      r_txt <- gsub(
        pattern = "date_chr",
        replacement = paste0("\"", date_chr, "\""),
        x = r_txt
      )
      r_txt <- gsub(
        pattern = "date_strip",
        replacement = paste0("\"", date_strip, "\""),
        x = r_txt
      )
      # write to new file
      writeLines(r_txt, con = new_file)
      message("'.py' contents copied")
    }
  } else if (lang == "D3") {
    new_file <- file.path(yr, date_chr, paste0(date_strip, ".js"))
    if (!file.exists(new_file)) {
      file.create(new_file)
      message("Created '.js' file")
      js_txt <- readLines(system.file("tt-template.js",
        package = "usefunc",
        mustWork = TRUE
      ))
      writeLines(js_txt, con = new_file)
      message("'.js' contents copied")
    }

    new_r_file <- file.path(yr, date_chr, paste0(date_strip, ".R"))
    if (!file.exists(new_r_file)) {
      file.create(new_r_file)
      message("Created '.R' file")
      r_txt <- readLines(system.file("tt-js-template.R",
        package = "usefunc",
        mustWork = TRUE
      ))
      r_txt <- gsub(
        pattern = "yr",
        replacement = paste0("\"", yr, "\""),
        x = r_txt
      )
      r_txt <- gsub(
        pattern = "date_chr",
        replacement = paste0("\"", date_chr, "\""),
        x = r_txt
      )
      writeLines(r_txt, con = new_r_file)
      message("'.R' contents copied")
    }

    new_html_file <- file.path(yr, date_chr, "index.html")
    if (!file.exists(new_html_file)) {
      file.create(new_html_file)
      message("Created 'index.html' file")
      html_txt <- readLines(system.file("tt-template.html",
        package = "usefunc",
        mustWork = TRUE
      ))
      # replace placeholder text with variables
      new_html_txt <- gsub(
        pattern = "date_strip", replacement = date_strip, x = html_txt
      )
      writeLines(new_html_txt, con = new_html_file)
      message("'index.html' contents copied")
    }
  }

  if (readme) {
    # make new README file
    new_readme <- file.path(yr, date_chr, "README.md")
    if (!file.exists(new_readme)) {
      file.create(new_readme)
      message("Created 'README.md' file")
      # copy lines to README file
      if (lang == "R") {
        readme_txt <- readLines(system.file("tt-readme-r-template.md",
          package = "usefunc",
          mustWork = TRUE
        ))
      } else {
        readme_txt <- readLines(system.file("tt-readme-template.md",
          package = "usefunc",
          mustWork = TRUE
        ))
      }
      # replace placeholder text with variables
      readme_txt <- gsub(
        pattern = "yr", replacement = yr, x = readme_txt
      )
      readme_txt <- gsub(
        pattern = "date_chr", replacement = date_chr, x = readme_txt
      )
      readme_txt <- gsub(
        pattern = "date_strip", replacement = date_strip, x = readme_txt
      )
      # write to file
      writeLines(readme_txt, con = new_readme)
      message("'README.md' contents copied")
    }
  }
  message("Template successfully copied!")
}
