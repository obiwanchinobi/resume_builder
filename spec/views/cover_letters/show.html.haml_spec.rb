require 'spec_helper'

describe "cover_letters/show.html.haml" do
  before(:each) do
    @cover_letter = assign(:cover_letter, stub_model(CoverLetter,
      :jobvert => nil,
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
