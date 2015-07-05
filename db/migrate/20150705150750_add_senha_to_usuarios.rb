class AddSenhaToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :senha, :password_digest
  end
end
