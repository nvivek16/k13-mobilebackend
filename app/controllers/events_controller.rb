class EventsController < ApplicationController
 def index
	@category = Category.find_by_name(params[:category_id])
	@events = @category.events
 end
 def new 
	@category = Category.find_by_name(params[:category_id])
	@event = @category.events.build
 end
 def create
	@category = Category.find_by_name(params[:category_id])
	@event = @category.events.build(params[:event])
	if @event.save
		redirect_to category_events_path
	end
 end
 def show
	@event = Event.find_by_name(params[:id])
	render 	json:@event, callback: params[:callback]
 end
end
