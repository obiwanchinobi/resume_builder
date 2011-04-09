require 'spec_helper'

describe "praises/show.html.haml" do
  before(:each) do
    @praise = assign(:praise, stub_model(Praise,
      :recommendation => nil,
      :comment => "Comment",
      :reference_name => "Reference Name",
      :reference_title => "Reference Title",
      :year => "Year",
      :display_index => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reference Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reference Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Year/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
