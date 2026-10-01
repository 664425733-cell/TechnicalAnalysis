library(quantmod)

calculate_indicators <- function(stock_data_list) {
  
  indicators_list <- list()
  
  for (symbol in names(stock_data_list)) {
    
    stock <- stock_data_list[[symbol]]
    
    # Closing prices
    close_prices <- Cl(stock)
    
    # Indicators
    sma_20 <- SMA(close_prices, n = 20)
    sma_50 <- SMA(close_prices, n = 50)
    ema_20 <- EMA(close_prices, n = 20)
    rsi_14 <- RSI(close_prices, n = 14)
    macd_vals <- MACD(close_prices)
    
    # Store results
    indicators_list[[symbol]] <- list(
      SMA20 = sma_20,
      SMA50 = sma_50,
      EMA20 = ema_20,
      RSI14 = rsi_14,
      MACD = macd_vals
    )
  }
  
  return(indicators_list)
}

