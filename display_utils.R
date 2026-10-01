display_head <- function(stock_data_list) {
  for (symbol in names(stock_data_list)) {
    cat("\n===== ", symbol, " (First 6 Rows) =====\n")
    print(head(stock_data_list[[symbol]]))
  }
}
