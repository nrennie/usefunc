#' Create folder and files for website blog
#' @param date_chr Date of blog in yyyy-mm-dd format.
#' @param slug Character string for url.
#' @return a message if template file was successfully copied over
#' @export

use_blog_template <- function(date_chr = "2023-08-01",
                              slug = "blog-title") {
  # check date in correct format
  if (is.na(as.Date(date_chr, format = "%Y-%m-%d"))) {
    stop("'date_chr' in incorrect format. Should be yyyy-mm-dd.")
  }
  # make folder
  new_folder <- file.path("content", "blog", paste0(date_chr, "-", slug))
  if (!file.exists(new_folder)) {
    dir.create(new_folder, recursive = TRUE)
    message("Created new folder")
  }
  # make new file
  new_file <- file.path("content", "blog", paste0(date_chr, "-", slug), "index.md")
  if (!file.exists(new_file)) {
    file.create(new_file)
    message("Created 'index.md' file")

    # copy lines to .R file
    r_txt <- readLines(system.file("blog-template.md",
                                   package = "usefunc",
                                   mustWork = TRUE
    ))
    # replace placeholder text with variables
    # r_txt <- gsub(
    #   pattern = "yr",
    #   replacement = paste0("\"", yr, "\""),
    #   x = r_txt
    # )
    # write to new file
    writeLines(r_txt, con = new_file)
    message("'index.md' contents copied")
  }

  message("Template successfully copied!")
}
