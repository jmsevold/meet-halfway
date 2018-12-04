class CreateHalfwayLinks < ActiveRecord::Migration
  def change
    create_table :halfway_links do |t|
      t.references :user, index: true, foreign_key: true
      t.string :token

      t.timestamps null: false
    end
  end
end
