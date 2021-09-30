#-----------------------------------------------------------------------------#
#
# Author:        Logan Stundal
# Date:          January 01, 2020
# Purpose:       Note
#
#
# Copyright (c): Logan Stundal, 2020
# Email:         stund005@umn.edu
#
#-----------------------------------------------------------------------------#
#
# Notes:
#
#
#-----------------------------------------------------------------------------#


#---------------------------#
# Set working directory
#---------------------------#
setwd('c:/users/logan/googledrive/umn/research/vitae')


# SAVE ------------------------------------------------------------------------

# Knit the pdf
rmarkdown::render(input       = 'stundal-cv.Rmd',
                  output_file = 'stundal-cv.pdf')

# Save a copy with today's date to the 'Old-Versions' folder
file.copy(from = "stundal-cv.pdf",
          to   = paste0("Old-Versions/CV_",format(lubridate::today(), "%Y%m%d"),".pdf"),
          overwrite = TRUE)


# Save a copy to website directory folder for immediate upload
file.copy(from = "stundal-cv.pdf",
          to   = "C:/Users/logan/Old-GoogleDrive/UMN/RESEARCH/website/static/media/stundal-cv.pdf",
          overwrite = TRUE)
