require 'spec_helper'

describe "cover_letters/index.html.haml" do
  before(:each) do
    assign(:cover_letters, [
      stub_model(CoverLetter,
        :jobvert => nil,
        :body => "MyText"
      ),
      stub_model(CoverLetter,
        :jobvert => nil,
        :body => "MyText"
      )
    ])
  end

  it "renders a list of cover_letters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
