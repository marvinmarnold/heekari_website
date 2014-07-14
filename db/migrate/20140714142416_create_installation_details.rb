class CreateInstallationDetails < ActiveRecord::Migration
  def change
    create_table :installation_details do |t|
      t.belongs_to :home_type, index: true
      t.integer :num_rooms
      t.integer :num_ppl
      t.float :lights_per_room
      t.string :photo
      t.float :efficiency
      t.belongs_to :light_type, index: true

      t.timestamps
    end
  end
end
