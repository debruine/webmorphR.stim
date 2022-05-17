#' Load image set
#'
#' Load image sets as a stimlist, ready for processing with webmorphR functions.
#'
#' @param set name of the image set
#' @param pattern Vector of patterns to use to search for files, or a vector of image indices
#'
#' @return a list with class stimlist
#' @export
#'
#' @examples
#' # loads the first 5 images in the set
#' stim <- load_stim("rainbow", 1:5)
#'
#' # loads all images with 3 digits and m
#' canada_male <- load_stim("canada", "[0-9]{3}m")
load_stim <- function(set = c("london", "smiling", "composite", "canada", "lisa", "zoom", "rainbow"),
                      pattern = NULL) {
  set <- match.arg(set)
  path <- system.file(set, package = "webmorphR.stim")
  webmorphR::read_stim(path, pattern)
}

#' @export
#' @rdname load_stim
load_stim_canada <- function(pattern = NULL) {
  load_stim("canada", pattern)
}

#' @export
#' @rdname load_stim
load_stim_london <- function(pattern = NULL) {
  load_stim("london", pattern)
}

#' @export
#' @rdname load_stim
load_stim_zoom <- function(pattern = NULL) {
  load_stim("zoom", pattern)
}

#' @export
#' @rdname load_stim
load_stim_smiling <- function(pattern = NULL) {
  load_stim("smiling", pattern)
}

#' @export
#' @rdname load_stim
load_stim_composite <- function(pattern = NULL) {
  load_stim("composite", pattern)
}

#' @export
#' @rdname load_stim
load_stim_lisa <- function(pattern = NULL) {
  load_stim("lisa", pattern)
}

#' @export
#' @rdname load_stim
load_stim_rainbow <- function(pattern = NULL) {
  load_stim("rainbow", pattern)
}
