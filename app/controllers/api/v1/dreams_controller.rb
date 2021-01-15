class Api::V1::DreamsController < ApplicationController

    def index
		dreams = Dream.all
		render json: dreams, except: [:created_at, :updated_at]
	end

	def show
		dream = Dream.find(params[:id])
		render json: dream
	end

	def create 
		byebug
		dream = Dream.create!(dream_params)
		render json: dream
    end
    
	def update
		dream = Dream.find(params[:id])
		dream.update!(dream_params)
		render json: dream
	end

	def destroy
		dream = Dream.find(params[:id])
		dream.destroy!
		render json: {}
	end
	
	private
    
	def dream_params 
		params.permit(:title, :story, :character, :place, :action, :image, :date, :rating, :journal_id)
	end
end
