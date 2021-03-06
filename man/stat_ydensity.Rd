\name{stat_ydensity}
\alias{stat_ydensity}
\title{1d kernel density estimate along y axis, for violin plot.}
\usage{
  stat_ydensity(mapping = NULL, data = NULL,
    geom = "violin", position = "dodge", adjust = 1,
    kernel = "gaussian", trim = TRUE, scale = "area",
    na.rm = FALSE, ...)
}
\arguments{
  \item{trim}{If \code{TRUE} (default), trim the tails of
  the violins to the range of the data. If \code{FALSE},
  don't trim the tails.}

  \item{scale}{if "area" (default), all violins have the
  same area (before trimming the tails). If "count", areas
  are scaled proportionally to the number of observations.
  If "width", all violins have the same maximum width.}

  \item{na.rm}{If \code{FALSE} (the default), removes
  missing values with a warning. If \code{TRUE} silently
  removes missing values.}

  \item{mapping}{The aesthetic mapping, usually constructed
  with \code{\link{aes}} or \code{\link{aes_string}}. Only
  needs to be set at the layer level if you are overriding
  the plot defaults.}

  \item{data}{A layer specific dataset - only needed if you
  want to override the plot defaults.}

  \item{geom}{The geometric object to use display the data}

  \item{position}{The position adjustment to use for
  overlappling points on this layer}

  \item{adjust}{see \code{\link{density}} for details}

  \item{kernel}{kernel used for density estimation, see
  \code{\link{density}} for details}

  \item{...}{other arguments passed on to
  \code{\link{layer}}. This can include aesthetics whose
  values you want to set, not map. See \code{\link{layer}}
  for more details.}
}
\value{
  A data frame with additional columns:
  \item{density}{density estimate} \item{scaled}{density
  estimate, scaled to maximum of 1} \item{count}{density *
  number of points - probably useless for violin plots}
  \item{violinwidth}{density scaled for the violin plot,
  according to area, counts or to a constant maximum width}
  \item{n}{number of points} \item{width}{width of violin
  bounding box}
}
\description{
  1d kernel density estimate along y axis, for violin plot.
}
\section{Aesthetics}{
  \Sexpr[results=rd,stage=build]{ggplot2:::rd_aesthetics("stat",
  "ydensity")}
}
\examples{
# See geom_violin for examples
# Also see stat_density for similar examples with data along x axis
}
\seealso{
  \code{\link{geom_violin}} for examples, and
  \code{\link{stat_density}} for examples with data along
  the x axis.
}

