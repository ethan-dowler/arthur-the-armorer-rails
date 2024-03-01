class CreatePlaythroughs < ActiveRecord::Migration[7.0]
  def change
    create_table :playthroughs, id: :uuid do |t|
      t.references :account, null: false, foreign_key: true, type: :uuid
      t.integer :number, null: false

      t.timestamps
    end
  end
end
