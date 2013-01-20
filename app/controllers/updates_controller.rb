class UpdatesController < ApplicationController
def index
		@updates = Update.all
		@updatesList = @updates.collect { |update| update.content}
		respond_to do |format|
			format.html
			format.json	{render json: @updatesList, callback: params[:callback]}
		end
	end
	def new 
		@update = Update.new
	end
	def create
		@update = Update.new(params[:update])
		if @update.save
			redirect_to updates_path
		else
			render :action => 'new'
		end
	end
	
	def update
      @update = Update.find(params[:id])
      if @update.update_attributes(params[:update])
    	redirect_to updates_path
      else
        render :action => 'edit'
      end
  	end

  	def destroy
    	@update = Update.find(params[:id])
    	if @update.destroy
    		redirect_to updates_path
    	end
  	end

  	def edit
      @update = Update.find(params[:id])
  	end
end
