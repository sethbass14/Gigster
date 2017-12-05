class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.integer :age
      t.belongs_to :city, foreign_key: true
      t.boolean :is_leader, default: false
      t.timestamps
    end
  end
end
