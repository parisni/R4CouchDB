\name{cdbGetUuidS}
\Rdversion{1.1}
\alias{cdbGetUuidS}

\title{
Function for request a number of ids
}
\description{
Function returns a 128bit uuid requested from CouchDB
}

\arguments{
   \item{cdb}{ Only the  connection settings \code{cdb$port} and
     \code{cdb$serverName} is needed.
}
}
\details{
Simple CouchDB API end point to http://serverName:port/_uuids. The
   number N of ids received from a CouchDB can be set by
   \code{cdb$queryParam <- paste("count=", N, sep="")}.
   The function writes to cdb$res (in opposite to \code{cdbGetUuid()}
   whitch writes to \code{cdb$id})
}
\value{

  \item{cdb }{The result of the request is stored in \code{cdb$res} after
    converting the answer into a list using \code{fromJSON()}.
  }
}
\references{

  \url{  http://www.omegahat.org/RCurl/        }
  \url{  http://www.omegahat.org/RJSONIO/      }
  \url{  http://couchdb.apache.org/            }
}
\examples{
ccc <- cdbIni()
ccc$serverName <- "wactbprot.couchone.com"
ccc$queryParam <- "count=10"
cdbGetUuidS(ccc)$res
}
\author{
  wactbprot
}

\seealso{
\code{cdbMakeDB}
}
\keyword{ misc }
