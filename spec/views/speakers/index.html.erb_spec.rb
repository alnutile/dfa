require 'spec_helper'

describe "speakers/index" do
  before(:each) do
    assign(:speakers, [
      stub_model(Speaker,
        :firstname => "Firstname"
      ),
      stub_model(Speaker,
        :firstname => "Firstname"
      )
    ])
  end

  it "renders a list of speakers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
  end
end
