#> This is the main function, that will run once per tick



#> Map selection check:


execute if score start nn_voting_open matches 1 run function nnb_vote:assign

schedule function nnb_vote:tick 3s