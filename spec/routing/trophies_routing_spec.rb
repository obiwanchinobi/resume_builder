require "spec_helper"

describe TrophiesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/trophies" }.should route_to(:controller => "trophies", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/trophies/new" }.should route_to(:controller => "trophies", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/trophies/1" }.should route_to(:controller => "trophies", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/trophies/1/edit" }.should route_to(:controller => "trophies", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/trophies" }.should route_to(:controller => "trophies", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/trophies/1" }.should route_to(:controller => "trophies", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/trophies/1" }.should route_to(:controller => "trophies", :action => "destroy", :id => "1")
    end

  end
end
