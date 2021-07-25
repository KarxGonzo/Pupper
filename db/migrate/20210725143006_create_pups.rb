class CreatePups < ActiveRecord::Migration[6.1]
  def change
    create_table :pups do |t|
      t.integer :age
      t.string :name
      t.string :breed

      t.timestamps
    end
  end
end
