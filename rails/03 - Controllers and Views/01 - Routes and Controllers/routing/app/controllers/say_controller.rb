class SayController < ApplicationController
    def main
        render plain: 'What do you want me to say?'
    end

    def hello
        render plain: 'Saying hello!'
    end

    def hello_joe
        render plain: 'Hello Joe!'
    end

    def hello_michael
        redirect_to "/say/hello/joe"
    end
end
