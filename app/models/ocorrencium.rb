class Ocorrencium < ActiveRecord::Base
  
  has_attached_file :anexo, :styles => { :medium => "300x300>", :thumb => "120x90#" },
                :path => ':rails_root/public/images/anexo/:id-:basename-:style.:extension',
                :url => '/images/anexo/:id-:basename-:style.:extension',
                :default_url => "/images/anexo/missing.png"
  
end
