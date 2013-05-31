class SpeakerRequestsController < InheritedResources::Base

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
