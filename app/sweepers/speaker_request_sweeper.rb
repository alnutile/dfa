class SpeakerRequestSweeper < ActionController::Caching::Sweeper

  observe SpeakerRequest

  def sweep(speaker_request)
      expire_page speaker_requests_path
      expire_page speaker_request_path(speaker_request)
      expire_fragment('search_sp')
      expire_fragment(:controller => 'speaker_requests', :action => 'index')
      #FileUtils.rm_rf "#{speaker_requests_cache_directory}/speaker_requests"
  end
  
  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destroy, :sweep
 
end
