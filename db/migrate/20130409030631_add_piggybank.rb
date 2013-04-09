class AddPiggybank < ActiveRecord::Migration
  def change
    create_table :piggybanks do |t|
      t.string :name
      t.integer :penny
      t.integer :nickle
      t.integer :dime
      t.integer :quarter
      t.integer :dollar
      t.timestamps
    end
  end
end
