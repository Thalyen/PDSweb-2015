class AddAttachmentAnexoToOcorrencia < ActiveRecord::Migration
  def self.up
    change_table :ocorrencia do |t|
      t.attachment :anexo
    end
  end

  def self.down
    remove_attachment :ocorrencia, :anexo
  end
end
