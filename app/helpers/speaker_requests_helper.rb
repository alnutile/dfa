module SpeakerRequestsHelper

	def speakerName(speakerRequestObject) 
		 if speakerRequestObject.speaker_id
		 	@speakerName = speakerRequestObject.speaker.firstname
		 else 
		 	@speakerName = "<em>[no speaker click here to sign up]</em>"
		 end
	end

end
