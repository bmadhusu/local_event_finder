class EventsController < ApplicationController

  layout 'admin'

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    # Instantiate a new object using form parameters
    @event = Event.new(event_params)

    # save the event
    if @event.save
      flash[:notice] = "Event created successfully."
      redirect_to(events_path)
    else
      render('new')
      
    end
  end


  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    # find an object using form parameters
    @event = Event.find(params[:id])
    
    # save the event
    if @event.update_attributes(event_params)
      flash[:notice] = "Event updated successfully."
      redirect_to(events_path)
    else
      render('edit')
      
    end
  end
  
  def delete
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event '#{@event.title}' deleted successfully."
    redirect_to(events_path)
  end

  private

  def event_params
    params.require(:event).permit(:title, :tweeter_id, :description, :event_date, :location_address, :state, :zip, :congressional_district)
  end

end
