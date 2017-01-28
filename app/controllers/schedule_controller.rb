class ScheduleController < ApplicationController
  
  def index
    test = [{
      id: 123,
      name: 'Breakfast',
      time: '8:00',
      place: 'Byte',
      tag: [],
      description: 'FOOD GUYSS',
      date: Time.now
    }]

    render json: test
  end

  def create
    @schedule = Schedule.new
  end
end
