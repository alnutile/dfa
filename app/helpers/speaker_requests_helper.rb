module SpeakerRequestsHelper

	def speakerName(speakerRequestObject) 
		 if speakerRequestObject.speaker_id
		 	@speakerName = speakerRequestObject.speaker.firstname
		 else 
		 	@speakerName = "<em>[no speaker click here to sign up]</em>"
		 end
	end


	def locationName(speakerRequestObject) 
		 if speakerRequestObject.location_id
		 	@locationName = speakerRequestObject.location.name
		 else 
		 	@locationName = "<em>[no location yet]</em>"
		 end
	end
end
