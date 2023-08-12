class CreateAppBuildpacks < ActiveRecord::Migration[7.0]
  def change
    create_table :app_buildpacks do |t|
      t.references :app, null: false, foreign_key: true
      t.references :buildpack, null: false, foreign_key: true
      t.integer :position, null: false
      t.timestamps
    end
  end
end
