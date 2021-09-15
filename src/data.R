#==============================#
#### Loading & Shaping data ####
#==============================#

#------------------------#
#### Helper functions ####
#------------------------#

get_stars <- function(expr, p.val) {ifelse(expr == regulation_type$NOT_REG, "", gtools::stars.pval(p.val))}

#------------------------------#
#### Data loading functions ####
#------------------------------#


#-------------------------------#
#### Data checking functions ####
#-------------------------------#

