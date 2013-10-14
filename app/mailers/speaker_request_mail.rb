class SpeakerRequestMail < ActionMailer::Base
  default from: "admin@server.alfrednutile.info"
  default to: "alfrednutile@gmail.com"
  default cc: "atychen@gmail.com"

  def new_request_notify(speaker_request)
    @url = Rails.application.config.host
    @speaker_request = speaker_request
    AdminUser.all.each do |a|
      mail(to: a.email, subject: "New Request")
    end
  end

end
