class Api::V1::JournalsController < ApplicationController
    def index
		journals = Journal.all.includes(:dreams)
		render json: journals, except: [:created_at, :updated_at]
    end
    
    def show
		journal = Journal.find(params[:id])
		render json: journal
	end

	def create 
		journal = Journal.create!(journal_params)
		render json: journal
    end
    
	def update
		journal = Journal.find(params[:id])
		journal.update!(journal_params)
		render json: journal
	end

	def destroy
		journal = Journal.find(params[:id])
		journal.destroy!
		render json: {}
	end
	
	private
    
	def journal_params 
		params.permit(:year, :month, :user_id)
	end
end
