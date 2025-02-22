class EventBookingsController < ApplicationController
  before_action :set_event

  def new
  end

  def create
    ticket_params[:user_ids].compact_blank.each do |user_id|
      @event.tickets.where(user_id: nil).first.update(user_id: user_id)
    end

    redirect_to events_path
  end

  private

  def set_event
    @event = Event.find_by(id: params[:event_id])
  end

  def ticket_params = params.require(:event).permit(user_ids: [])
end
