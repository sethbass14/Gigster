class CreateGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :gigs do |t|
      t.string :name
      t.string :location
      t.date :date
      t.time :start_time
      t.belongs_to :city, foreign_key: true
      t.belongs_to :leader, foreign_key: true

      t.timestamps
    end
  end
end
