class AddPeriodoToLancamentosContabeis < ActiveRecord::Migration
  def change
    add_column :lancamentos_contabeis, :periodo, :string
  end
end
