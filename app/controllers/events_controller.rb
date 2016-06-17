class EventsController < ApplicationController
  
   before_action :logged_in_user, only: [:new, :create, :destroy]
  
  def new
    @event = Event.new
  end
  
  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      flash[:success] = "The event has been created."
      redirect_to @event
    else
      render :new
    end  
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def index
    @event = Event.all
  end
  
  private
    
    def event_params
      params.require(:event).permit(:title, :description)
    end
  
end
