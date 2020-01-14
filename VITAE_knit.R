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
rmarkdown::render(input       = 'VITAE.Rmd',
                  output_file = 'VITAE.pdf')


file.copy(from = 'VITAE.pdf',
          to   = file.path(dirname('VITAE.Rmd'),
                           'Versions',
                           paste0('VITAE_',format(lubridate::today(), "%Y%m%d"),'.pdf')),
          overwrite = TRUE)


