require 'spec_helper'

describe "jobverts/new.html.haml" do
  before(:each) do
    assign(:jobvert, stub_model(Jobvert,
      :position => "MyString",
      :company => "MyString",
      :website => "MyString",
      :found_on => "MyString"
    ).as_new_record)
  end

  it "renders new jobvert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jobverts_path, :method => "post" do
      assert_select "input#jobvert_position", :name => "jobvert[position]"
      assert_select "input#jobvert_company", :name => "jobvert[company]"
      assert_select "input#jobvert_website", :name => "jobvert[website]"
      assert_select "input#jobvert_found_on", :name => "jobvert[found_on]"
    end
  end
end
