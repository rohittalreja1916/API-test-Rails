class CreateApis < ActiveRecord::Migration[7.0]
  def change
    create_table :apis do |t|
      t.string :url, null: false
      t.text :description
      t.string :name, null: false
      t.string :host, null: false
      t.boolean :has_data, default: false

      t.timestamps
    end
  end
end
