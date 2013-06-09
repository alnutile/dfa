class SpeakerRequestMail < ActionMailer::Base
  default from: "admin@server.alfrednutile.info"
  default to: "alfrednutile@gmail.com"
  default cc: "atychen@gmail.com"

  def new_request_notify(speaker_request)
    #@id = request.id
    @url = "http://dfa.alfrednutile.info"
    @speaker_request = speaker_request
    mail(to: "alfrednutile@gmail.com", subject: "New Request")
    #logger.info "Email Sent #{@speaker_request}"
  end

end
