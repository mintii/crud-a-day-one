class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :email_address
      t.integer :department_id
      t.timestamps( null: false )
    end
  end
end
