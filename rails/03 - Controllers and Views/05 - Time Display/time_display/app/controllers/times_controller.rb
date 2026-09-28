class TimesController < ApplicationController
  def main
    @current_time = Time.now
  end
end
