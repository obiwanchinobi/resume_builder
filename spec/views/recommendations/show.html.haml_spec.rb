require 'spec_helper'

describe "recommendations/show.html.haml" do
  before(:each) do
    @recommendation = assign(:recommendation, stub_model(Recommendation,
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
