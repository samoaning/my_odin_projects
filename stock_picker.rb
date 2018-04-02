=begin
Author: Steve Yankson
Project "Stock picker" from The Odin Project
2nd/April/2018
=end

  def stock_picker(prices)
    max_profit = 0
    best_buy = 0
    best_sell = 0

    prices[0..-2].each_with_index do |buy, i|
      prices[(i + 1)..-1].each_with_index do |sell, v|
        if (sell - buy) > max_profit
          best_buy = i
          best_sell = v + (i + 1)
          max_profit = sell - buy
        end
      end
    end
    [best_buy, best_sell]
  end
