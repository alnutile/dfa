class Speaker < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, 
  	:contactperson, :relatedorg, :phone, :speakertag_list
  has_many :speaker_requests
  alias_attribute :name, :firstname
  acts_as_taggable
  acts_as_taggable_on :speakertag
end
