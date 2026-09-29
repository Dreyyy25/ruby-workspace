class CountdownController < ApplicationController
  def main
    @time = Time.now
    # seconds between now and 11:59:59 PM today
    @seconds_left = (@time.end_of_day - @time).to_i
  end
end
