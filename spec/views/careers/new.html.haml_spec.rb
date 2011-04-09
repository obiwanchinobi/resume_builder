require 'spec_helper'

describe "careers/new.html.haml" do
  before(:each) do
    assign(:career, stub_model(Career,
      :work_experience => nil,
      :employer => "MyString",
      :position => "MyString",
      :description => "MyString",
      :display_index => 1
    ).as_new_record)
  end

  it "renders new career form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => careers_path, :method => "post" do
      assert_select "input#career_work_experience", :name => "career[work_experience]"
      assert_select "input#career_employer", :name => "career[employer]"
      assert_select "input#career_position", :name => "career[position]"
      assert_select "input#career_description", :name => "career[description]"
      assert_select "input#career_display_index", :name => "career[display_index]"
    end
  end
end
