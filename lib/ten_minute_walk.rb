def ten_minute_walk?(directions)
  directions.count('w') == directions.count('e') && directions.count('s') == directions.count('n') && directions.count == 10
end