require 'spec_helper'

describe "tags/edit.html.haml" do
  before(:each) do
    @tag = assign(:tag, stub_model(Tag,
      :career => nil,
      :description => "MyString",
      :display_index => 1
    ))
  end

  it "renders the edit tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tags_path(@tag), :method => "post" do
      assert_select "input#tag_career", :name => "tag[career]"
      assert_select "input#tag_description", :name => "tag[description]"
      assert_select "input#tag_display_index", :name => "tag[display_index]"
    end
  end
end
