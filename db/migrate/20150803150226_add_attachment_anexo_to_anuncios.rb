class AddAttachmentAnexoToAnuncios < ActiveRecord::Migration
  def self.up
    change_table :anuncios do |t|
      t.attachment :anexo
    end
  end

  def self.down
    remove_attachment :anuncios, :anexo
  end
end
