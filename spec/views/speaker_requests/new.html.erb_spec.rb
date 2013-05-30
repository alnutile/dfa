require 'spec_helper'

describe "speaker_requests/new" do
  before(:each) do
    assign(:speaker_request, stub_model(SpeakerRequest,
      :title => "MyString",
      :content => "MyText",
      :speaker_id => 1,
      :location_id => 1
    ).as_new_record)
  end

  it "renders new speaker_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", speaker_requests_path, "post" do
      assert_select "input#speaker_request_title[name=?]", "speaker_request[title]"
      assert_select "textarea#speaker_request_content[name=?]", "speaker_request[content]"
      assert_select "input#speaker_request_speaker_id[name=?]", "speaker_request[speaker_id]"
      assert_select "input#speaker_request_location_id[name=?]", "speaker_request[location_id]"
    end
  end
end
