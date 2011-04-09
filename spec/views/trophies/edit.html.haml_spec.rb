require 'spec_helper'

describe "trophies/edit.html.haml" do
  before(:each) do
    @trophy = assign(:trophy, stub_model(Trophy,
      :achievement => nil,
      :title => "MyString",
      :description => "MyText",
      :achieved_on => "MyString",
      :display_index => 1
    ))
  end

  it "renders the edit trophy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trophies_path(@trophy), :method => "post" do
      assert_select "input#trophy_achievement", :name => "trophy[achievement]"
      assert_select "input#trophy_title", :name => "trophy[title]"
      assert_select "textarea#trophy_description", :name => "trophy[description]"
      assert_select "input#trophy_achieved_on", :name => "trophy[achieved_on]"
      assert_select "input#trophy_display_index", :name => "trophy[display_index]"
    end
  end
end
