require 'spec_helper'

describe "accomplishments/show.html.haml" do
  before(:each) do
    @accomplishment = assign(:accomplishment, stub_model(Accomplishment,
      :career => nil,
      :description => "Description",
      :display_index => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
