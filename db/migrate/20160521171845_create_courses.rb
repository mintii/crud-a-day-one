class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string  :name
      t.date    :start_date
      t.date    :end_date
      t.string  :location
      t.time    :time
      t.timestamps( null: false )
    end
  end
end
