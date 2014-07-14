class CreateTypeHomes < ActiveRecord::Migration
  def change
    create_table :type_homes do |t|
      t.string :name

      t.timestamps
    end
  end
end
