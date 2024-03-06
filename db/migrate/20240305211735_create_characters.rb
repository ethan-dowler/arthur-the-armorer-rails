class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters, id: :uuid do |t|
      t.references :playthrough, null: false, foreign_key: true, type: :uuid

      # high-level info
      t.string :name, null: false
      t.integer :current_hp, null: false, default: 1
      t.integer :skill_points, null: false, default: 0

      # base attributes
      t.integer :base_mind, null: false, default: 1
      t.integer :base_body, null: false, default: 1
      t.integer :base_spirit, null: false, default: 1

      t.timestamps
    end
  end
end
