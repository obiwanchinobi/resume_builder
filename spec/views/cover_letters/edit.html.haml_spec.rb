require 'spec_helper'

describe "cover_letters/edit.html.haml" do
  before(:each) do
    @cover_letter = assign(:cover_letter, stub_model(CoverLetter,
      :jobvert => nil,
      :body => "MyText"
    ))
  end

  it "renders the edit cover_letter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cover_letters_path(@cover_letter), :method => "post" do
      assert_select "input#cover_letter_jobvert", :name => "cover_letter[jobvert]"
      assert_select "textarea#cover_letter_body", :name => "cover_letter[body]"
    end
  end
end
