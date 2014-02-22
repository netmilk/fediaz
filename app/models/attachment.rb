class Attachment < ActiveRecord::Base 
  has_attached_file :asset, 
    :styles => { :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"    
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  belongs_to :artefact
  default_scope { order('weight') } 
end
