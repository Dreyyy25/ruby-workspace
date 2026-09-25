class TimesController < ApplicationController
  def main
    # Time.now gets the current date/time from the system
    @current_time = Time.now
  end
end
