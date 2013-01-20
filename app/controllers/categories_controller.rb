class CategoriesController < ApplicationController
	def index
		@categories = Category.all
		@categoryList = @categories.collect { |category| category.name}
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
		@eventList = @events.collect { |event| event.name}
		render json: @eventList, callback: params[:callback]		

	end

	def update
      @category = Category.find_by_name(params[:id])
      if @category.update_attributes(params[:category])
    	redirect_to categories_path
      else
        render :action => 'edit'
      end
  	end

  	def destroy
    	@category = Category.find_by_name(params[:id])
    	if @category.destroy
    		redirect_to categories_path
    	end
  	end

  	def edit
      @category = Category.find_by_name(params[:id])
  	end

end
