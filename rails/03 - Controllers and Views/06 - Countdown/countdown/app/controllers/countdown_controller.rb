class CountdownController < ApplicationController
  def main
    @seconds_left = Time.current.seconds_until_end_of_day

    @today = Date.current.to_fs(:long)
  end
end
