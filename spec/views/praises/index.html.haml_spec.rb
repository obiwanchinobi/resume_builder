require 'spec_helper'

describe "praises/index.html.haml" do
  before(:each) do
    assign(:praises, [
      stub_model(Praise,
        :recommendation => nil,
        :comment => "Comment",
        :reference_name => "Reference Name",
        :reference_title => "Reference Title",
        :year => "Year",
        :display_index => 1
      ),
      stub_model(Praise,
        :recommendation => nil,
        :comment => "Comment",
        :reference_name => "Reference Name",
        :reference_title => "Reference Title",
        :year => "Year",
        :display_index => 1
      )
    ])
  end

  it "renders a list of praises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reference Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reference Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
