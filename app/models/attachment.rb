class Attachment < ActiveRecord::Base
  has_and_belongs_to_many :artefacts
  has_attached_file :asset, 
    :styles => { :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"
    
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
end
