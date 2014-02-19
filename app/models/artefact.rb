class Artefact < ActiveRecord::Base
   has_and_belongs_to_many :attachments
   accepts_nested_attributes_for :attachments
end
