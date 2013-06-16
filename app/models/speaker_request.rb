class SpeakerRequest < ActiveRecord::Base
  attr_accessible :content, :date, :train_trainer, 
    :public, :cme_ceu, :tag_list, :location_name, :location_street, :location_street_two,
    :location_zip, :online, :requesting_org, :website, :contact_person, 
    :phone, :email, :state_list, :city_list, :published
  has_many :request_speakers
  has_many :speakers, :through => :request_speakers
  acts_as_taggable
  acts_as_taggable_on :tags, :city, :state
  # validate :incorrect_date, :on => :create

  scope :published, -> { where published: true }
  scope :content, ->(searched) { where(["content LIKE ?", "%#{searched}%"]) }
  scope :date_range, ->(start_date, end_date) {
    where("date between ? and ?", start_date, end_date)
  }

  # date range / month object 
  #   pass it a range
  #   this is active_record

  def yes_or_no
    attribute ? 'Yes' : 'No'
  end

  private
   # def incorrect_date
   # 	if date < Date.today
   # 		errors.add("Please choose a future date")
   # 	end
   # end
end
