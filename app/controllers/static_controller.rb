class StaticController < ApplicationController
	def home
	end

	def resources
		render 'resources_'+params[:id]
	end
end
