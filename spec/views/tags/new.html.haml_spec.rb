require 'spec_helper'

describe "tags/new.html.haml" do
  before(:each) do
    assign(:tag, stub_model(Tag,
      :career => nil,
      :description => "MyString",
      :display_index => 1
    ).as_new_record)
  end

  it "renders new tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tags_path, :method => "post" do
      assert_select "input#tag_career", :name => "tag[career]"
      assert_select "input#tag_description", :name => "tag[description]"
      assert_select "input#tag_display_index", :name => "tag[display_index]"
    end
  end
end
