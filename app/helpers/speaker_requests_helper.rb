module SpeakerRequestsHelper

	def speaker_name(speakerRequestObject) 
		 if speakerRequestObject.speakers
		 	@speakerName = speaker_output(speakerRequestObject.speakers) 
		 else 
		 	@speakerName = "<em>[no speaker click here to sign up]</em>"
		 end
	end

    private
      def speaker_output(speakers) 
        speakers.each do |s|
          @speaker = s.firstname
        end
      end

end
