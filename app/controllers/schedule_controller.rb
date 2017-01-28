class ScheduleController < ApplicationController
  
  def index
    test = [{
      id: 123,
      name: 'Breakfast',
      time: '8:00',
      place: 'Byte',
      tags: [],
      description: 'FOOD GUYSS',
      date: Time.now
    }]

    render json: test
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
