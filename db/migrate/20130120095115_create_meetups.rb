class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.datetime :date
      t.text :description
      t.string :place
      t.text :direction

      t.timestamps
    end
  end
end
