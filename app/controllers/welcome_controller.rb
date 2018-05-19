class WelcomeController < ApplicationController

    def show
        render json: "Hello"
    end
end