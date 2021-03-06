
#' Debug well-known geometry
#'
#' Prints the raw calls to the `WKBGeometryHandler()`. Useful for writing
#' custom C++ handlers and debugging read problems.
#'
#' @inheritParams wk::wkb_translate_wkt
#'
#' @return The input, invisibly
#' @export
#'
#' @examples
#' wkt_debug("MULTIPOLYGON (((0 0, 10 0, 0 10, 0 0)))")
#' wkt_streamer_debug("MULTIPOLYGON (((0 0, 10 0, 0 10, 0 0)))")
#' wkb_debug(
#'   wk::wkt_translate_wkb(
#'     "MULTIPOLYGON (((0 0, 10 0, 0 10, 0 0)))"
#'   )
#' )
#'
wkb_debug <- function(wkb) {
  cpp_debug_wkb(wkb)
  invisible(wkb)
}

#' @rdname wkb_debug
#' @export
wkt_debug <- function(wkt) {
  cpp_debug_wkt(wkt)
  invisible(wkt)
}

#' @rdname wkb_debug
#' @export
wkt_streamer_debug <- function(wkt) {
  cpp_debug_wkt_streamer(wkt)
  invisible(wkt)
}

#' @rdname wkb_debug
#' @export
wksxp_debug <- function(wksxp) {
  cpp_debug_wksxp(wksxp)
  invisible(wksxp)
}
