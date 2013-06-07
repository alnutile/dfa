module ApplicationHelper

  def request_page?(request)
    request_uri = request.request.uri
  end

end
