class AddDurationToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :duration, :string
  end
end
