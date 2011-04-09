require "spec_helper"

describe CareersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/careers" }.should route_to(:controller => "careers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/careers/new" }.should route_to(:controller => "careers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/careers/1" }.should route_to(:controller => "careers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/careers/1/edit" }.should route_to(:controller => "careers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/careers" }.should route_to(:controller => "careers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/careers/1" }.should route_to(:controller => "careers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/careers/1" }.should route_to(:controller => "careers", :action => "destroy", :id => "1")
    end

  end
end
