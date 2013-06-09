class SpeakerRequestSweeper < ActionController::Caching::Sweeper

  observe SpeakerRequest

  def sweep(speaker_request)
      expire_page speaker_request_path
      expire_page speaker_request_path(speaker_request)
      expire_page "/requests"
      expire_page "/speaker_requests"
      #FileUtils.rm_rf "#{speaker_request_cache_directory}/speaker_requests"
  end
  
  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destroy, :sweep
 
end
