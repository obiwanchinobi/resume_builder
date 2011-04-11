require 'spec_helper'

describe "accomplishments/index.html.haml" do
  before(:each) do
    assign(:accomplishments, [
      stub_model(Accomplishment,
        :career => nil,
        :description => "Description",
        :display_index => 1
      ),
      stub_model(Accomplishment,
        :career => nil,
        :description => "Description",
        :display_index => 1
      )
    ])
  end

  it "renders a list of accomplishments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
