class Speaker < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, 
  	:contactperson, :relatedorg, :phone, :speakertag_list
  has_many :request_speakers
  has_many :speaker_requests, :through => :request_speakers
  alias_attribute :name, :firstname
  acts_as_taggable
  acts_as_taggable_on :speakertag
end
