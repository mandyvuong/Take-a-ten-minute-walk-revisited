def ten_minute_walk?(directions)
  directions.uniq.size > 1 && directions.count('w') == directions.count('e') && directions.count('s') == directions.count('n')? true : false
end