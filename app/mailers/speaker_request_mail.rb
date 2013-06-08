class SpeakerRequestMail < ActionMailer::Base
  default from: "admin@drfa.alfrednutile.info"
  default to: "alfrednutile@gmail.com"
  default cc: "alfrednutile@gmail.com"

  def new_request_notify(speaker_request)
    #@id = request.id
    @speaker_request = speaker_request
    mail(to: "alfrednutile@gmail.com", subject: "New Request")
    #logger.info "Email Sent #{@speaker_request}"
  end

end
