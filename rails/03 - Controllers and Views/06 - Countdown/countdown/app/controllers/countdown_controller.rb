class CountdownController < ApplicationController
    def main
        @now = Time.zone.now
        @seconds_left = (Time.zone.tomorrow.beginning_of_day - @now).to_i
    end
end
