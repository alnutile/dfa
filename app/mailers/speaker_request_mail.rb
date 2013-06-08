class SpeakerRequestMail < ActionMailer::Base
  default from: "admin@pmserver.alfrednutile.info"
  default to: "alfrednutile@gmail.com"
  default cc: "alfrednutile@gmail.com"

  def new_request_notify(request)
    @id = request.id
    mail(to: "alfrednutile@gmail.com", subject: "New Request")
    logger.info "Email Sent"
  end

end
