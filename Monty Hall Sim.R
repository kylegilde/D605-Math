monty_hall_sim <- function(n){
  wins_no_switching <- c()
  wins_when_switching <- c()
  for (i in 1:n){
    options <- c("car", "goat", "goat")
    doors <- sample(options, 3)
    contestant_1st_choice <- sample.int(length(doors), 1)
    wins_no_switching <- append(wins_no_switching, doors[contestant_1st_choice] == "car")
    remaining_doors <- doors[-contestant_1st_choice] 
    while (TRUE){
      reveal_door_w_goat <- sample(length(remaining_doors), 1)
      if (remaining_doors[reveal_door_w_goat] == "goat"){
        final_door <- remaining_doors[-reveal_door_w_goat]
        break}
    }
    wins_when_switching <- append(wins_when_switching, final_door == "car")
  }
  print(paste("Wins without switching: ", sum(wins_no_switching)))
  print(paste("Wins with switching: ", sum(wins_when_switching)))
}
monty_hall_sim(1000)