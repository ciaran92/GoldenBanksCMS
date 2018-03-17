class StallionsController < ApplicationController
	before_action :set_post, only: [:show, :update, :destroy]

	def index
		@stallions = Stallion.all

		#@stallions.image.thumb.url 
		render json: @stallions
	end

	def show
		render json: @stallion
	end

	def new
		@stallion = Stallion.new
	end

	def all_stallions
		@stallions = Stallion.all
	end

	def stallions_for_sale
		@stallions = Stallion.where(:for_sale => true)
		render json: @stallions
	end

	def edit
		@stallion = Stallion.find(params[:id])
	end

	def update
		@stallion = Stallion.find(params[:id])

		if(@stallion.update(stallion_params))
			redirect_to all_stallions_path
		else
			render 'edit'
		end
	end

	def create
		@stallion = Stallion.new(stallion_params)

		if(@stallion.save)
			flash[:notice] = "Stallion Created"
			redirect_to all_stallions_path
		else
			render 'new'
		end
	end

	def destroy
		@stallion = Stallion.find(params[:id])
		@stallion.destroy
		redirect_to all_stallions_path
	end

	private

		def set_post
			@stallion = Stallion.find(params[:id])
		end
		
		def stallion_params
			params.require(:stallion).permit(:name, :for_sale, :price, :image, :reg_number, :birth_date, :sex, 
				:colour, :markings, :breeder, :description, :mother_name, :mother_image, :father_name,
				:father_image, :breeding_description, :remove_image)
		end
end
