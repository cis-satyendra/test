class GenerateDataController < ApplicationController
	def fetch_standard
		standards = Datum.pluck(:standard)
		render json: standards, content_type: "application/json"
	end
end
