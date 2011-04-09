require 'spec_helper'

describe "careers/index.html.haml" do
  before(:each) do
    assign(:careers, [
      stub_model(Career,
        :work_experience => nil,
        :employer => "Employer",
        :position => "Position",
        :description => "Description",
        :display_index => 1
      ),
      stub_model(Career,
        :work_experience => nil,
        :employer => "Employer",
        :position => "Position",
        :description => "Description",
        :display_index => 1
      )
    ])
  end

  it "renders a list of careers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employer".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
