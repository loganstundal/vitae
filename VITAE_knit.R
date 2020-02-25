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
rmarkdown::render(input       = 'VITAE.Rmd',
                  output_file = 'VITAE.pdf')

# Save a copy with today's date to the 'Versions' folder
file.copy(from = 'VITAE.pdf',
          to   = file.path(dirname('VITAE.Rmd'),
                           'Versions',
                           paste0('VITAE_',format(lubridate::today(), "%Y%m%d"),'.pdf')),
          overwrite = TRUE)


# Save a copy to website directory folder for immediate upload
file.copy(from = 'VITAE.pdf',
          to   = '')

# paste0('VITAE_',format(lubridate::today(), "%Y%m%d"),'.pdf')