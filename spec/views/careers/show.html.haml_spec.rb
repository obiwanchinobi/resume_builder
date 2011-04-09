require 'spec_helper'

describe "careers/show.html.haml" do
  before(:each) do
    @career = assign(:career, stub_model(Career,
      :work_experience => nil,
      :employer => "Employer",
      :position => "Position",
      :description => "Description",
      :display_index => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Position/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
