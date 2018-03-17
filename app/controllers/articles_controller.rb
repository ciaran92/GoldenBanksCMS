class ArticlesController < ApplicationController
	before_action :set_post, only: [:show, :update, :destroy]

	def index
		@articles = Article.all
		render json: @articles
	end

	def display_all_articles
		@articles = Article.all
	end

	def display_selected_article
		@article = Article.find(params[:id])
	end

	def show
		@article = Article.find(params[:id])
		render json: @article
	end

	def edit
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		
		if(@article.save)
			redirect_to display_blog_path
		else
			render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])

		if(@article.update(article_params))
			redirect_to display_blog_path
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to display_blog_path
	end

	private
		def set_post
			@article = Article.find(params[:id])
		end

		def article_params
			params.require(:article).permit(:title, :body, :image)
		end
end
