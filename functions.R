get_data <- function(){
  myPack::insurance
}


train_set <- function(df){
  myPack::train(df)
}

test_set <- function(df){
  myPack::test(df)
}


pred <- function(train_set,test_set){
  myPack::predicted(train_set,test_set)
}

res_plot <- function(pred,test){
  myPack::pred_plot(pred,test)

}
