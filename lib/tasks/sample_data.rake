namespace :db do
  desc "Fill Speaker database with sample data"
  task populate: :environment do
    Speaker.create!(firstname: "Speaker 1")
    25.times do |n|
      name  = "Speaker #{n+1}"
      last = "Last #{n+1}"
      Speaker.create!(firstname: name, lastname: last)
    end
  end

  desc "Fill SpeakerRequests database with sample data"
  task populate: :environment do
    #SpeakerRequest.create!(title: "No Location or Speaker 1")
    25.times do |n|
      name  = "Request #{n+1}"
      description = Faker::Lorem.paragraph
      date = Time.now + n.days
      SpeakerRequest.create!(content: description,
                            date: date,
                            published: 1,
                            state: "State #{n+1}")
    end
  end

  desc "Relate Speakers to Requests"
  task populate: :environment do
    25.times do |n|
      RequestSpeaker.create!(speaker_id: n+1, speaker_request_id: n+1)
    end
  end

end
