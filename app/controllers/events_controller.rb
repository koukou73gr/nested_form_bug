class EventsController < ApplicationController

  def index
    @events = Event.order(:date)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.assign_attributes(params[:event])
    if @event.save
      redirect_to :action => :index
    else
      render :new
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.assign_attributes(params[:event])
    if @event.save
      redirect_to :action => :index
    else
      render :new
    end
  end
end
