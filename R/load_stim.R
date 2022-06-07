#' Load image set
#'
#' Load image sets as a stimlist, ready for processing with webmorphR functions. See Details below for citation links.
#'
#' @details
#'
#' * neutral/smiling: CC-BY <https://doi.org/10.6084/m9.figshare.5047666.v5>
#' * composite: CC-BY <https://doi.org/10.6084/m9.figshare.4055130.v1>
#' * canada: CC-BY <https://doi.org/10.6084/m9.figshare.4220517.v1>
#' * 3dsk: <https://doi.org/10.17605/OSF.IO/A3947>, via <https://www.3d.sk> for educational use only
#' * lisa/zoom: CC-0 images of the package creator
#' * rainbow: see `rainbow_info` for individual image credits
#'
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
load_stim <- function(set = c("neutral_front", "smiling_front", "3dsk",
                              "composite", "canada", "lisa", "zoom", "rainbow"),
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
  load_stim("neutral_front", pattern)
}

#' @export
#' @rdname load_stim
load_stim_neutral <- function(pattern = NULL) {
  load_stim("neutral_front", pattern)
}

#' @export
#' @rdname load_stim
load_stim_zoom <- function(pattern = NULL) {
  load_stim("zoom", pattern)
}

#' @export
#' @rdname load_stim
load_stim_smiling <- function(pattern = NULL) {
  load_stim("smiling_front", pattern)
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

#' @export
#' @rdname load_stim
load_stim_3dsk <- function(pattern = NULL) {
  load_stim("3dsk", pattern)
}

