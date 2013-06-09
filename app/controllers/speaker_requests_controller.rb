class SpeakerRequestsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, only: [:edit, :save]
  cache_sweeper :page_sweeper
  def index
    @use_cache = true
    #unless read_fragment({}) || 
    if params.has_key?(:date_start) or read_fragment({}) == true
            @use_cache = false
	    search = params.fetch(:search, '')
	    date_start = params.fetch(:date_start, Date.today.beginning_of_month)
	    date_end = params.fetch(:date_end, Date.today.beginning_of_month + 1.months)
	    page = params.fetch(:page, 1)
	    @speaker_requests_upcoming = SpeakerRequest.published.content(search).date_range(date_start, date_end)
	    @speaker_requests_upcoming = @speaker_requests_upcoming.paginate(page: params[:page], :order => "date ASC")
    end
  end

  def new
    @speaker_request = SpeakerRequest.new
  end

  def update
   
  end

  def create
    @speaker_request = SpeakerRequest.new(params[:speaker_request])
    if @speaker_request.save
      flash[:success] = "Thanks for making the request. We will get back to you shortly"
      redirect_to speaker_requests_path
      SpeakerRequestMail.new_request_notify(@speaker_request).deliver
      logger.info "Speaker request #{@speaker_request.id}"
    else
      render 'new'
    end
  end

  def admin
    authenticate_admin_user!
  end

end
