class TagsController < ApplicationController

    def index 
        tags = Tag.all 
        render json: tags, include: [:notes, :users]
    end
    
end
