class ScheduleController < ApplicationController
  
  def index
    render json: Schedule.all
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      render json: @schedule
    else 
      puts 'Not saved'
    end
  end

  private
  def schedule_params
    params
      .require(:schedule)
      .permit(:name, :time, :place, :tags, :description, :date)
  end
end
