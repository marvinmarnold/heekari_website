class CreatePrelaunchContacts < ActiveRecord::Migration
  def change
    create_table :prelaunch_contacts do |t|
      t.string :email

      t.timestamps
    end
  end
end
