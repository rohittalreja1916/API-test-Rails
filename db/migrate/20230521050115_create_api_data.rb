class CreateApiData < ActiveRecord::Migration[7.0]
  def change
    create_table :api_data do |t|
      t.string :name
      t.string :damageType
      t.references :api, null: false, foreign_key: true

      t.timestamps
    end
  end
end
