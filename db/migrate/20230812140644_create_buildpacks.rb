class CreateBuildpacks < ActiveRecord::Migration[7.0]
  def change
    create_table :buildpacks do |t|
      t.string :name , null: false
      t.string :buildpack
      t.timestamps
    end
  end
end
