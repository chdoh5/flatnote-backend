class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, include: [:notes, :tags]
    end
    
end
