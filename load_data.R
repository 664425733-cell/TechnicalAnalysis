library(quantmod)

load_stock_data <- function() {
  # Read stock symbols from portfolio.txt
  symbols <- readLines("portfolio.txt")
  
  # Create an empty list to store data frames
  stock_data_list <- list()
  
  # Loop through each symbol and get data
  for (symbol in symbols) {
    cat("Loading data for:", symbol, "\n")
    stock_data <- getSymbols(symbol, src = "yahoo", auto.assign = FALSE)
    stock_data_list[[symbol]] <- stock_data
  }
  
  # Return the list of data frames
  return(stock_data_list)
}
