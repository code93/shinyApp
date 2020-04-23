library(bigchess)
library("rjson")

json_file <- paste0("https://api.chess.com/pub/player/",user,"/games/archives")
json_data <- fromJSON(paste(readLines(json_file), collapse=""))
result <- data.frame()
for(i in json_data$archives)
  result <- rbind(result,read.pgn(paste0(i,"/pgn")))

req <- select(result, -Movetext, -Event, -Site, -Round, -Movetext)

win <- filter(req, (White == user & Result == "1-0"  | (Black == user & Result == "0-1")))
los <- filter(req, (White == user & Result == "0-1"  | (Black == user & Result == "1-0")))

winData <- select(win, NMoves, W_B_moves:R_moves)
losData <- select(los, NMoves, W_B_moves:R_moves)

winData <- filter(winData, NMoves>=4)
losData <- filter(losData, NMoves>=4)

wd <- arrange(winData, NMoves)
ld <- arrange(losData, NMoves)

wd[,20]=1
ld[,20]=0

data <- rbind(wd, ld)

probWin <- sum(data$V20==1)/(sum(data$V20 == 0)+sum(data$V20 == 1))



