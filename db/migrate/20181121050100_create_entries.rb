class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :survey, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :address
      t.decimal :lat
      t.decimal :lon

      t.timestamps null: false
    end
  end
end
