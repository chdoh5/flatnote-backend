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
        render json: note
    end

    def create 
        note = Note.create(title: params[:title], content: params[:content], user_id: params[:user_id])
        render json: note, include: [:user, :tags]
    end


end
