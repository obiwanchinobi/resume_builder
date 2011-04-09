require 'spec_helper'

describe "recommendations/index.html.haml" do
  before(:each) do
    assign(:recommendations, [
      stub_model(Recommendation,
        :jobvert => nil,
        :re_name => "Re Name",
        :display_index => 1
      ),
      stub_model(Recommendation,
        :jobvert => nil,
        :re_name => "Re Name",
        :display_index => 1
      )
    ])
  end

  it "renders a list of recommendations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Re Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
