require 'spec_helper'

describe "praises/new.html.haml" do
  before(:each) do
    assign(:praise, stub_model(Praise,
      :recommendation => nil,
      :comment => "MyString",
      :reference_name => "MyString",
      :reference_title => "MyString",
      :year => "MyString",
      :display_index => 1
    ).as_new_record)
  end

  it "renders new praise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => praises_path, :method => "post" do
      assert_select "input#praise_recommendation", :name => "praise[recommendation]"
      assert_select "input#praise_comment", :name => "praise[comment]"
      assert_select "input#praise_reference_name", :name => "praise[reference_name]"
      assert_select "input#praise_reference_title", :name => "praise[reference_title]"
      assert_select "input#praise_year", :name => "praise[year]"
      assert_select "input#praise_display_index", :name => "praise[display_index]"
    end
  end
end
