class ScheduleController < ApplicationController

  def index
    schedules = Schedule.all.map do |schedule|
      {
        id: schedule[:id],
        name: schedule[:name],
        place: schedule[:place],
        time: schedule[:time],
        duration: schedule[:duration],
        tag: schedule[:tag],
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

  def show
    detailedSchedule = Schedule.find(params[:id])
    render json: detailedSchedule
  end


  private
  def schedule_params
    params.require(:schedule).permit(
      :name,
      :time,
      :place,
      :description,
      :date,
      :duration,
      :tag,
    )
  end
end
