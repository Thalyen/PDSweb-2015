class CreateLancamentosContabeis < ActiveRecord::Migration
  def change
    create_table :lancamentos_contabeis do |t|
      t.string :titulo
      t.decimal :valor
      t.integer :tipo
      t.text :descricao

      t.timestamps null: false
    end
  end
end
