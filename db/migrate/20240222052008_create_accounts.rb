class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :nickname, null: false

      t.timestamps
    end
  end
end
