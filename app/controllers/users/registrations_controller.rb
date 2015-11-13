class Users::RegistrationsController < ApplicationController
	def index
		
	end
	
	def new
		
	end

	def create
		response = nil

		begin
			response = RestClient.post "#{ENV['API_ENDPOINT']}/users", params.to_json, :content_type => :json, :accept => :json	
		rescue StandardError => e
			response = e	
			respond_to do |format|
				format.html { render :new }
        		format.json { render json: response.errors, status: :unprocessable_entity }
			end
			logger.info "##### RESPONSE: #{response.inspect}"
		end

		# render :new
		# logger.info "##### REG PARAMS: #{params[:registration].inspect}"
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
