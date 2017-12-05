class CreateMusicianInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :musician_instruments do |t|
      t.belongs_to :musician, foreign_key: true
      t.belongs_to :instrument, foreign_key: true

      t.timestamps
    end
  end
end
