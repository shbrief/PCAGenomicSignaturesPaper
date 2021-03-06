## This script if from https://bitbucket.org/biobakery/crc-subtyping-paper/src/master/src/misc.R
#
# library(cluster)
#
# # function for removing missing / Inf values in an expression
# rmNaInf <- function(x) {
#   if(!is.matrix(x)) stop("x must be a matrix (expression values)!")
#   x <- x[apply(x, 1, function(row) {
#     !any(is.na(row) | row %in% c(Inf, -Inf))
#   }), ]
#   return(x)
# }

#' gg color function
#'
#' @importFrom grDevices hcl
#' @param n The number of colors
#' @export
gg_color_hue <- function(n) {
  hues = seq(15, 375, length = n + 1)
  grDevices::hcl(h = hues, l = 65, c = 100)[1:n]
}

# # function for filling in zero values for classification
# fillInZero <- function(exprs, names) {
#   if (!all(rownames(exprs) %in% names)) stop("Gene names don't match!")
#   exprs_new <- matrix(0, length(names), ncol(exprs))
#   dimnames(exprs_new) <- list(names, colnames(exprs))
#   exprs_new[rownames(exprs), ] <- exprs
#   return(exprs_new)
# }
#
# # calculate silhouette width
# calcSilWidth <- function(distance, lvls) {
#   lvl.factor <- factor(lvls)
#   distance.mat <- as.matrix(distance)
#   df.return <- data.frame(lvl1 = NULL, lvl2 = NULL, avg.sil.width = NULL)
#   for(i in 1:(nlevels(lvl.factor) - 1)) {
#     lvl1 <- levels(lvl.factor)[i]
#     if(sum(lvl.factor %in% lvl1) == 0) next
#     for(j in (i + 1):nlevels(lvl.factor)) {
#       lvl2 <- levels(lvl.factor)[j]
#       if(sum(lvl.factor %in% lvl2) == 0) next
#       distance.mat.tmp <- distance.mat[lvl.factor %in% c(lvl1, lvl2),
#                                        lvl.factor %in% c(lvl1, lvl2)]
#       lvl.factor.tmp <- lvl.factor[lvl.factor %in% c(lvl1, lvl2)]
#       avg.sil.width <- summary(silhouette(lvl.factor.tmp %>% as.numeric,
#                                           dist=distance.mat.tmp %>% as.dist) )$avg.width
#       df.return <- rbind(df.return,
#                          data.frame(lvl1 = lvl1, lvl2 = lvl2, avg.sil.width = avg.sil.width))
#     }
#   }
#   avg.sil.width <- summary(silhouette(lvl.factor %>% as.numeric,
#                                       dist=distance.mat %>% as.dist) )$avg.width
#   df.return <- rbind(df.return,
#                      data.frame(lvl1 = "all", lvl2 = "all", avg.sil.width = avg.sil.width))
#   return(df.return)
# }
