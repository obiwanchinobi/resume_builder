require 'spec_helper'

describe "accomplishments/new.html.haml" do
  before(:each) do
    assign(:accomplishment, stub_model(Accomplishment,
      :career => nil,
      :description => "MyString",
      :display_index => 1
    ).as_new_record)
  end

  it "renders new accomplishment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accomplishments_path, :method => "post" do
      assert_select "input#accomplishment_career", :name => "accomplishment[career]"
      assert_select "input#accomplishment_description", :name => "accomplishment[description]"
      assert_select "input#accomplishment_display_index", :name => "accomplishment[display_index]"
    end
  end
end
