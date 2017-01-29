class AddTagToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :tag, :string
  end
end
