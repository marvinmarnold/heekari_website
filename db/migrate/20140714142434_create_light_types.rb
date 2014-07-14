class CreateLightTypes < ActiveRecord::Migration
  def change
    create_table :light_types do |t|
      t.string :name
      t.float :efficiency
      t.string :photo

      t.timestamps
    end
  end
end
