class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.integer :qualificacao
      t.integer :tipo
      t.string :unidade

      t.timestamps null: false
    end
  end
end
