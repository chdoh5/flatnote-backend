class NotetagsController < ApplicationController

    def index 
        notetags = Notetag.all 

        render json: notetags, include: [:tag, :note]
    end

    def show
        notetag = Notetag.find(params[:id])
        options = {
            include: [:tag, :notes, :users]
        }
        # render json: CartSerializer.new(cart, options)
        render json: notetag
    end

end
