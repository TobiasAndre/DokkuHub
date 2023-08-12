class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.string :service_type, null: false
      t.timestamps
    end
  end
end
