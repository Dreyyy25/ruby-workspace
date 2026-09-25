class CountdownController < ApplicationController
  def main
    @current_time = Time.now
    
    # Calculate seconds remaining until 23:59:59 tonight
    # .to_i converts the difference to an integer
    @seconds_left = (@current_time.end_of_day - @current_time).to_i
  end
end