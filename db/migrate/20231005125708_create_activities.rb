class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.float :co2_kg

      t.timestamps
    end
  end
end
