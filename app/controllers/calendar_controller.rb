class CalendarController < ApplicationController
  def show
    render template: "calendar/#{params[:page]}"
  end
end
