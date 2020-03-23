class NotesController < ApplicationController

    def index 
        notes = Note.all 

        render json: notes, include: [:user, :tags]
    end

    def show
        note = Note.find(params[:id])
        options = {
            include: [:user, :tags, :notetags]
        }
        # render json: CartSerializer.new(cart, options)
        render json: note
    end


end
