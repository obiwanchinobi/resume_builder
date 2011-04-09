require 'spec_helper'

describe "recommendations/edit.html.haml" do
  before(:each) do
    @recommendation = assign(:recommendation, stub_model(Recommendation,
      :jobvert => nil,
      :re_name => "MyString",
      :display_index => 1
    ))
  end

  it "renders the edit recommendation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recommendations_path(@recommendation), :method => "post" do
      assert_select "input#recommendation_jobvert", :name => "recommendation[jobvert]"
      assert_select "input#recommendation_re_name", :name => "recommendation[re_name]"
      assert_select "input#recommendation_display_index", :name => "recommendation[display_index]"
    end
  end
end
