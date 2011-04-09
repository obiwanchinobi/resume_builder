require "spec_helper"

describe ResponsibilitiesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/responsibilities" }.should route_to(:controller => "responsibilities", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/responsibilities/new" }.should route_to(:controller => "responsibilities", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/responsibilities/1" }.should route_to(:controller => "responsibilities", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/responsibilities/1/edit" }.should route_to(:controller => "responsibilities", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/responsibilities" }.should route_to(:controller => "responsibilities", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/responsibilities/1" }.should route_to(:controller => "responsibilities", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/responsibilities/1" }.should route_to(:controller => "responsibilities", :action => "destroy", :id => "1")
    end

  end
end
