class CategoriesController < ApplicationController
	def index
		@categories = Category.all
		@categoryList = []
		@categories.each do |category|
			@categoryList << category.name
		end
		respond_to do |format|
			format.html
			format.json	{render json: @categoryList, callback: params[:callback]}
		end
	end
	def new 
		@category = Category.new
	end
	def create
		@category = Category.new(params[:category])
		if @category.save
			redirect_to categories_path
		end
	end
	
	def show 
		@category = Category.find_by_name(params[:id])
		@events = @category.events
		@eventList = []
		@events.each do |event|
			@eventList << event.name
		end
		render json: @eventList, callback: params[:callback]		

	end
end
