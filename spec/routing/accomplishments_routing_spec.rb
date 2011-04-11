require "spec_helper"

describe AccomplishmentsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/accomplishments" }.should route_to(:controller => "accomplishments", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/accomplishments/new" }.should route_to(:controller => "accomplishments", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/accomplishments/1" }.should route_to(:controller => "accomplishments", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/accomplishments/1/edit" }.should route_to(:controller => "accomplishments", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/accomplishments" }.should route_to(:controller => "accomplishments", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/accomplishments/1" }.should route_to(:controller => "accomplishments", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/accomplishments/1" }.should route_to(:controller => "accomplishments", :action => "destroy", :id => "1")
    end

  end
end
