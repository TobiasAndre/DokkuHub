class CreateApps < ActiveRecord::Migration[7.0]
  def change
    create_table :apps do |t|
      t.string :name, null: false
      t.string :description
      t.string :url
      t.boolean :is_active, null: false, default: true
      t.boolean :is_locked, null: false, default: false
      t.timestamps
    end
  end
end
