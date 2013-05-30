class SpeakerRequestsController < InheritedResources::Base

  def index
    @speaker_requests = SpeakerRequest.paginate(page: params[:page], :per_page => 20)
  end

end
