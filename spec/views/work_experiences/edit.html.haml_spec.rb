require 'spec_helper'

describe "work_experiences/edit.html.haml" do
  before(:each) do
    @work_experience = assign(:work_experience, stub_model(WorkExperience,
      :display_index => 1
    ))
  end

  it "renders the edit work_experience form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => work_experiences_path(@work_experience), :method => "post" do
      assert_select "input#work_experience_display_index", :name => "work_experience[display_index]"
    end
  end
end
