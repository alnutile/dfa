require 'spec_helper'

describe "speakers/edit" do
  before(:each) do
    @speaker = assign(:speaker, stub_model(Speaker,
      :firstname => "MyString"
    ))
  end

  it "renders the edit speaker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", speaker_path(@speaker), "post" do
      assert_select "input#speaker_firstname[name=?]", "speaker[firstname]"
    end
  end
end
