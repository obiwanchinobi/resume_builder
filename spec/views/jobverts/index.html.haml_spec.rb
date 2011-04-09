require 'spec_helper'

describe "jobverts/index.html.haml" do
  before(:each) do
    assign(:jobverts, [
      stub_model(Jobvert,
        :position => "Position",
        :company => "Company",
        :website => "Website",
        :found_on => "Found On"
      ),
      stub_model(Jobvert,
        :position => "Position",
        :company => "Company",
        :website => "Website",
        :found_on => "Found On"
      )
    ])
  end

  it "renders a list of jobverts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Found On".to_s, :count => 2
  end
end
