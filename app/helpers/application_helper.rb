module ApplicationHelper
  include ActsAsTaggableOn::TagsHelper
  
  def states_list
    #SpeakerRequest.tags
    ActsAsTaggableOn::Tag.includes(:taggings).where("taggings.context = 'state'")
    ##@states = ActsAsTaggableOn::Tagging.all
    ##@items = []
    ##@states.each do |name|
    ##  if name.context == 'state'
    ##   @items << name.taggable_type 
    ##  end
    ##end
    ##state_names = @items
    ##state_names = @states
    
    
    #logger.info "array_state #{item}"
    #ActsAsTaggableOn::Tag.includes(:state).
    # 		where("taggings.context = 'state'").select("DISTINCT tags.*")
    #states = [test, test1, test3]
    #logger.info "helper states #{@SpeakerRequest.state_list}"
  end

  def request_page?(request)
    request_uri = request.request.uri
  end
end
