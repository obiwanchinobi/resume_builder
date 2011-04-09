require 'spec_helper'

describe "achievements/new.html.haml" do
  before(:each) do
    assign(:achievement, stub_model(Achievement,
      :jobvert => nil,
      :re_name => "MyString",
      :display_index => 1
    ).as_new_record)
  end

  it "renders new achievement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => achievements_path, :method => "post" do
      assert_select "input#achievement_jobvert", :name => "achievement[jobvert]"
      assert_select "input#achievement_re_name", :name => "achievement[re_name]"
      assert_select "input#achievement_display_index", :name => "achievement[display_index]"
    end
  end
end
