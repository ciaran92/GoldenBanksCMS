class MembersController < ApplicationController
	before_action :set_post, only: [:show]

	def index
		@members = Member.all
		render json: @members
	end

	def display_members
		@members = Member.all
	end

	def show
		render json: @member
	end

	def new
		@member = Member.new
	end

	def create
		@member = Member.new(member_params)

		if(@member.save)
			flash[:notice] = "Member Created"
			redirect_to display_members_path
		else
			render 'new'
		end
	end

	def edit
		@member = Member.find(params[:id])
	end

	def update
		@member = Member.find(params[:id])

		if(@member.update(member_params))
			redirect_to display_members_path
		else
			render 'edit'
		end
	end

	def destroy
		@member = Member.find(params[:id])
		@member.destroy
		redirect_to display_members_path
	end

	private

		def set_post
			@member = Member.find(params[:id])
		end
		
		def member_params
			params.require(:member).permit(:name, :age, :image, :description, :remove_image)
		end
end
