class EventsController < ApplicationController

  def new
    @event = Event.new
    @event.my_events.build
  end

  def create
    @event = Event.find_or_create_by!(name: event_params[:name])
    @event.my_events.build(event_params[:my_events_attributes]["0"])
    if @event.save
      redirect_to root_url, notice: "success!!"
    else
      render :new
    end
  end

  def update
    @event = Event.where(name: event_params[:name]).first
    @event.my_events.build(event_params[:my_events_attributes]["0"])
    if @event.save
      redirect_to root_url, notice: "success!!"
    else
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, my_events_attributes: [:name])
  end
end
