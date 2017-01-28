class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :name
      t.string :time
      t.string :place
      t.string :tags, array: true, default: []
      t.text :description
      t.date :date
      t.timestamps
    end
  end
end
