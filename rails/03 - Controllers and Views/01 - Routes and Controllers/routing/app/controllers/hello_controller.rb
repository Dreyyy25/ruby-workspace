class HelloController < ApplicationController
    def hello
        render plain: 'Hello AltitudeIQ!'
    end
end
