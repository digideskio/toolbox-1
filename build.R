# R script to build sites
library(rmarkdown)

render("index.Rmd")

# Hacky way to apply yaml and navbar to subpages
dirs = c("introduction", "rrstudio", "import", "questionnaire")
for (d in dirs) {
    dpath <- paste0(d, "/")
    # Create aux files in subfolders
    file.copy("_output.yaml", dpath, overwrite = T)
    file.copy("_navbar.html", dpath, overwrite = T)
    # Render rmarkdown from subfolder to .html in root
    render(input = paste0(dpath, "index.Rmd"),
           output_file = paste0(d, ".html"),
           output_dir = "./")
    # Delete aux files in subfolders
    file.remove(paste0(dpath, "_output.yaml"))
    file.remove(paste0(dpath, "_navbar.html"))
}
