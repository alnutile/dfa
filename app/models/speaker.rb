class Speaker < ActiveRecord::Base
  attr_accessible :firstname
  has_many :speaker_requests
  alias_attribute :name, :firstname
end
