class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.integer :zip
      t.string :stateCode
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
