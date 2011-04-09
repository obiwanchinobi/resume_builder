require 'spec_helper'

describe "tags/index.html.haml" do
  before(:each) do
    assign(:tags, [
      stub_model(Tag,
        :career => nil,
        :description => "Description",
        :display_index => 1
      ),
      stub_model(Tag,
        :career => nil,
        :description => "Description",
        :display_index => 1
      )
    ])
  end

  it "renders a list of tags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
