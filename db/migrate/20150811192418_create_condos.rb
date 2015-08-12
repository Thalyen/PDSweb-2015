class CreateCondos < ActiveRecord::Migration
  def change
    create_table :condos do |t|
      t.string :name
      t.string :url
      t.boolean :status

      t.timestamps null: false
    end
  end
end
