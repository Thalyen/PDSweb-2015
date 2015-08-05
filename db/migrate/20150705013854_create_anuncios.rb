class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.integer :tipo
      t.string :titulo
      t.text :descricao
      t.string :anexo

      t.timestamps null: false
    end
  end
end
