class DeleteTagsFromSchedule < ActiveRecord::Migration[5.0]
  def change
    remove_column :schedules, :tags
  end
end
