require 'spec_helper'

describe "speaker_requests/show" do
  before(:each) do
    @speaker_request = assign(:speaker_request, stub_model(SpeakerRequest,
      :title => "Title",
      :content => "MyText",
      :speaker_id => 1,
      :location_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
