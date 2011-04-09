require 'spec_helper'

describe "jobverts/show.html.haml" do
  before(:each) do
    @jobvert = assign(:jobvert, stub_model(Jobvert,
      :position => "Position",
      :company => "Company",
      :website => "Website",
      :found_on => "Found On"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Position/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Website/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Found On/)
  end
end
