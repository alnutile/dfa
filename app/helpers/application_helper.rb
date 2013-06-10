module ApplicationHelper
  include ActsAsTaggableOn::TagsHelper
  
  def states_list
    ActsAsTaggableOn::Tag.includes(:taggings).where("taggings.context = 'state'")
  end

  def request_page?(request)
    request_uri = request.request.uri
  end


end
