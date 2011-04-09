require 'spec_helper'

describe "trophies/show.html.haml" do
  before(:each) do
    @trophy = assign(:trophy, stub_model(Trophy,
      :achievement => nil,
      :title => "Title",
      :description => "MyText",
      :achieved_on => "Achieved On",
      :display_index => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Achieved On/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
