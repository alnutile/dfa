class SpeakerRequestsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, only: [:edit, :save]
  def index
    search = params[:search];
    # @speaker_requests = SpeakerRequest.paginate(
    # 	page: params[:page], 
    # 	:per_page => 20,
  		# :order => "date ASC")
    @speaker_requests_upcoming = SpeakerRequest.paginate(
    	page: params[:page], 
    	:conditions => ["(date > ? AND content LIKE ?)", Date.yesterday, "%#{search}%"],
    	:per_page => 20,
  		:order => "date ASC")
  end

  def new
    @speaker_request = SpeakerRequest.new
  end

  def create
    @speaker_request = SpeakerRequest.new(params[:speaker_request])
    if @speaker_request.save
      flash[:success] = "Thanks for making the request. We will get back to you shortly"
      #redirect_to speaker_requests_path
      redirect_to @speaker_request
    else
      render 'new'
    end
  end

  def admin
    authenticate_admin_user!
  end

end
