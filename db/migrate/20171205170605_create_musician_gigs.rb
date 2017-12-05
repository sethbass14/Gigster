class CreateMusicianGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :musician_gigs do |t|
      t.belongs_to :musician, foreign_key: true
      t.belongs_to :gig, foreign_key: true

      t.timestamps
    end
  end
end
