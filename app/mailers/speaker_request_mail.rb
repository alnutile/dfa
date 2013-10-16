class SpeakerRequestMail < ActionMailer::Base
  default to: Proc.new { AdminUser.pluck(:email) },
          from: "admin@server.alfrednutile.info"

  def new_request_notify(speaker_request)
    @url = Rails.application.config.host
    @speaker_request = speaker_request
    mail(subject: "New Request")
  end

end
