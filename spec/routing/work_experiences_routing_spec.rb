require "spec_helper"

describe WorkExperiencesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/work_experiences" }.should route_to(:controller => "work_experiences", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/work_experiences/new" }.should route_to(:controller => "work_experiences", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/work_experiences/1" }.should route_to(:controller => "work_experiences", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/work_experiences/1/edit" }.should route_to(:controller => "work_experiences", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/work_experiences" }.should route_to(:controller => "work_experiences", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/work_experiences/1" }.should route_to(:controller => "work_experiences", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/work_experiences/1" }.should route_to(:controller => "work_experiences", :action => "destroy", :id => "1")
    end

  end
end
