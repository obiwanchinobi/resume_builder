require 'spec_helper'

describe "cover_letters/new.html.haml" do
  before(:each) do
    assign(:cover_letter, stub_model(CoverLetter,
      :jobvert => nil,
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new cover_letter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cover_letters_path, :method => "post" do
      assert_select "input#cover_letter_jobvert", :name => "cover_letter[jobvert]"
      assert_select "textarea#cover_letter_body", :name => "cover_letter[body]"
    end
  end
end
