class CreateAppServices < ActiveRecord::Migration[7.0]
  def change
    create_table :app_services do |t|
      t.string :name, null: false
      t.references :app, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.timestamps
    end
  end
end
