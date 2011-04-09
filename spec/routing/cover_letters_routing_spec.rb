require "spec_helper"

describe CoverLettersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/cover_letters" }.should route_to(:controller => "cover_letters", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/cover_letters/new" }.should route_to(:controller => "cover_letters", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/cover_letters/1" }.should route_to(:controller => "cover_letters", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/cover_letters/1/edit" }.should route_to(:controller => "cover_letters", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/cover_letters" }.should route_to(:controller => "cover_letters", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/cover_letters/1" }.should route_to(:controller => "cover_letters", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/cover_letters/1" }.should route_to(:controller => "cover_letters", :action => "destroy", :id => "1")
    end

  end
end
