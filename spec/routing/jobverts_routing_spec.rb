require "spec_helper"

describe JobvertsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/jobverts" }.should route_to(:controller => "jobverts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/jobverts/new" }.should route_to(:controller => "jobverts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/jobverts/1" }.should route_to(:controller => "jobverts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/jobverts/1/edit" }.should route_to(:controller => "jobverts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/jobverts" }.should route_to(:controller => "jobverts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/jobverts/1" }.should route_to(:controller => "jobverts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/jobverts/1" }.should route_to(:controller => "jobverts", :action => "destroy", :id => "1")
    end

  end
end
