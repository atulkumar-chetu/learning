class MoonsController < ApplicationController
	def index
		@moons = Moon.all
	end

	def edit
		@moons = Moon.find(params[:id])
	end


	def show
		@moons = Moon.find(params[:id])
	end

	def destroy
		@moons = Moon.find(params[:id])
		@moons.destroy
			respond_to do |f|
				f.html { redirect_to action: "index"}
		end
	end

	def new
		@moons = Moon.new
	end

	def create

		@moons = Moon.create(moons_params)
		@moons.user = current_user
		@moons.save
		redirect_to action: "index"
	end


	def update
		@moons = Moon.find(params[:id])
		respond_to do |f|
			if @moons.update(moons_params)
				f.html { redirect_to action: "index"}
			end 
		end
	end 
	
	private 
	def moons_params
		params.require(:moon).permit(:title, :body, :about)
	end
end

