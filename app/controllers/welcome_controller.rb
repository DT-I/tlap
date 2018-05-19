class WelcomeController < ApplicationController

    def show
        render json: {message: "Hello"}
    end
end