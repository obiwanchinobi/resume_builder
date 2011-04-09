require 'spec_helper'

describe "achievements/show.html.haml" do
  before(:each) do
    @achievement = assign(:achievement, stub_model(Achievement,
      :jobvert => nil,
      :re_name => "Re Name",
      :display_index => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Re Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
