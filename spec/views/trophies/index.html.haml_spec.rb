require 'spec_helper'

describe "trophies/index.html.haml" do
  before(:each) do
    assign(:trophies, [
      stub_model(Trophy,
        :achievement => nil,
        :title => "Title",
        :description => "MyText",
        :achieved_on => "Achieved On",
        :display_index => 1
      ),
      stub_model(Trophy,
        :achievement => nil,
        :title => "Title",
        :description => "MyText",
        :achieved_on => "Achieved On",
        :display_index => 1
      )
    ])
  end

  it "renders a list of trophies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Achieved On".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
