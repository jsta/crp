#' macroag
#'
#' @docType package
#' @aliases macroag-package
#' @title Agricultural data for macrosystems research
#' @name macroag
#' @description Agricultural data for macrosystems research
#' @seealso
#' \link{macroag}
NULL



#' crp
#'
#' @title Conservation Reserve Program
#' @description Data from the Conservation Reserve Program
#' @docType data
#' @keywords datasets
#' @name crp
#' @references
#' \url{https://www.fsa.usda.gov/programs-and-services/conservation-programs/reports-and-statistics/conservation-reserve-program-statistics/index}
#'
#' Sprague, L. A., and J. A. M. Gronberg. 2012. Relating Management Practices and Nutrient Export in Agricultural Watersheds of the United States. Journal of Environment Quality 41: 1939. doi:10.2134/jeq2012.0073
NULL



#' @title Conservation tillage data
#' @description Conservation tillage data interpolated from counties to watersheds. Original data from the Conservation Technology Information Center. Interpolated data from Baker (2011).
#' @docType data
#' @keywords datasets
#' @name tillage_ctic
#'
#' @details
#' \tabular{ll}{
#' OID      \tab Internal feature number.                                                                         \cr
#' HUC8_N   \tab Numeric 8-digit hydrologic unit code                                                             \cr
#' crop     \tab crop name                                                                                        \cr
#' year     \tab crop planting year                                                                               \cr
#' notill   \tab No till conservation tillage, greater than 30 percent of soil covered with crop residue          \cr
#' ridge    \tab Ridge till conservation tillage, greater than 30 percent of soil covered with crop residue       \cr
#' mulch    \tab Mulch till conservation tillage, greater than 30 percent of soil covered with crop residue       \cr
#' reduced  \tab Reduced tillage (not considered conservation tillage), 15-30 percent of crop residue left on soil\cr
#' intense  \tab Intensive or conventional tillage, less than 15 percent residue left on soil                     \cr
#' totacre  \tab Total planted acres (sum of all tillage types)                                                   \cr
#' pctnotil \tab Percentage of no tilll acres                                                                     \cr
#' pctridge \tab Percentage of ridge tilll acres                                                                  \cr
#' pctmulch \tab Percentage of mulch till acres                                                                   \cr
#' pctreduc \tab Percentage of reduced tilll acres                                                                \cr
#' pctinten \tab Percentage of intensive tilll acres
#' }
#'
#' @references
#' \url{https://water.usgs.gov/GIS/metadata/usgswrd/XML/ds573_tillage_lu01.xml}
#'
#' Baker, N.T. 2011. Tillage practices in the conterminous United States, 1989–2004: Datasets aggregated by watershed. U.S. Geological Survey Data Series 573. USGS, Reston, VA
NULL
