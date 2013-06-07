namespace :db do
  desc "Fill Location database with sample data"
  task populate: :environment do
    Location.create!(name: "Location 1")
    25.times do |n|
      name  = "Location #{n+1}"
      Location.create!(name: name)
    end
  end

  desc "Fill Speaker database with sample data"
  task populate: :environment do
    Speaker.create!(firstname: "Speaker 1")
    25.times do |n|
      name  = "Speaker #{n+1}"
      Speaker.create!(firstname: name)
    end
  end

  desc "Fill SpeakerRequests database with sample data"
  task populate: :environment do
    SpeakerRequest.create!(title: "No Location or Speaker 1")
    25.times do |n|
      name  = "Request #{n+1}"
      description = Faker::Lorem.paragraph
      date = Time.now + n.days
      loc_id = "#{n+1}"
      speaker_id = "#{n+1}"
      SpeakerRequest.create!(title: name, 
                            content: description,
                            date: date,
                            location_id: loc_id,
                            speaker_id: speaker_id)
    end
  end

end
