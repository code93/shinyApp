\name{Documentation}
\alias{Documentation}
\docType{data}
\title{
   Analysis using bigchess
}
\description{
   bigchess package originally used to read pgn format chess game files to Analyse the games can also be used in a variety of useful ways. It also includes inbuilt datasets containing games of the grandmasters Kasparov and Carlsen, which has been used to get an insight of the top opening moves used by GM's.
}
\usage{library(bigchess)}
\format{
  data frame with 2410 and 2110 game observations for carlsen and Kasparov respectively.
  \describe{
    \item{\code{f}}{file vector}
    \item{\code{data}}{pgn vector}
  }
}
\details{
The Code is self evident for anyone who is familiar with chess.
}
\source{
Check the documentation of the bigchess package.
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
 browse_opening(data,movetext="")
}
\keyword{datasets}
