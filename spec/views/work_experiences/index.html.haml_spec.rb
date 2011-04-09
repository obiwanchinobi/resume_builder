require 'spec_helper'

describe "work_experiences/index.html.haml" do
  before(:each) do
    assign(:work_experiences, [
      stub_model(WorkExperience,
        :display_index => 1
      ),
      stub_model(WorkExperience,
        :display_index => 1
      )
    ])
  end

  it "renders a list of work_experiences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
