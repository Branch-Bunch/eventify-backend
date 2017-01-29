class ScheduleController < ApplicationController
  
  def index
    schedules = Schedule.all.map do |schedule|
      {
        name: schedule[:name],
        place: schedule[:place],
        time: schedule[:time],
        duration: schedule[:duration],
        tags: schedule[:tags]
      }
    end
    render json: schedules
  end

  def create
    schedule = Schedule.new(schedule_params)
    if schedule.save
      render json: schedule
    else 
      puts 'Not saved'
    end
  end

  private
  def schedule_params
    params.require(:schedule).permit(
      :name,
      :time,
      :place,
      :tags,
      :description,
      :date,
      :duration
    )
  end
end
