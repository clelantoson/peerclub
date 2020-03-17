class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :udemy_course_title
      t.integer :udemy_course_id
      t.date :starting_date
      t.integer :max_attendees
      t.string :meeting_point
      t.boolean :remote
      t.string :work_period

      t.timestamps
    end
  end
end
