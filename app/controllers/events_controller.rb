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
 def update
     @event = Event.find_by_name(params[:id])
     if @event.update_attributes(params[:event])
	   	redirect_to category_event_path(@event)
     else
       render :action => 'edit'
     end
end

def destroy
   	@event = Event.find_by_name(params[:id])
   	if @event.destroy
  		redirect_to category_events_path
   	end
end

def edit
	  @category = Category.find(params[:category_id])
      @event = Event.find_by_name(params[:id])
 end
end
