class SpeakerRequestsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, only: [:new, :create, :edit, :save]
  def index
    @speaker_requests = SpeakerRequest.paginate(
    	page: params[:page], 
    	:per_page => 20,
  		:order => "date ASC")
    @speaker_requests_upcoming = SpeakerRequest.paginate(
    	page: params[:page], 
    	:conditions => ["date > ?", Date.yesterday],
    	:per_page => 20,
  		:order => "date ASC")
  end

end
