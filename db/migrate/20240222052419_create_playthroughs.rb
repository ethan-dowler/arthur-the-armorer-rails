class CreatePlaythroughs < ActiveRecord::Migration[7.0]
  def change
    create_table :playthroughs, id: :uuid do |t|
      t.integer :number, null: false

      t.timestamps
    end
  end
end
