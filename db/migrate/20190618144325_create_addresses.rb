class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :phone
      t.string :addressline1
      t.string :addressline2
      t.string :city
      t.string :country
      t.integer :zipcode
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
