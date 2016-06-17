class EventAttendeesController < ApplicationController
  
  def create
    @event = Event.find(params[:event_id])
    current_user.attend_event(@event)
    redirect_to @event
  end
  
  def destroy
    @event = EventAttendee.find(params[:id]).event
    current_user.unattend_event(@event)
    redirect_to @event
  end
  
end
