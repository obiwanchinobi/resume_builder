require 'spec_helper'

describe "responsibilities/new.html.haml" do
  before(:each) do
    assign(:responsibility, stub_model(Responsibility,
      :career => nil,
      :description => "MyString",
      :display_index => 1
    ).as_new_record)
  end

  it "renders new responsibility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => responsibilities_path, :method => "post" do
      assert_select "input#responsibility_career", :name => "responsibility[career]"
      assert_select "input#responsibility_description", :name => "responsibility[description]"
      assert_select "input#responsibility_display_index", :name => "responsibility[display_index]"
    end
  end
end
