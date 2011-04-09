require "spec_helper"

describe PraisesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/praises" }.should route_to(:controller => "praises", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/praises/new" }.should route_to(:controller => "praises", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/praises/1" }.should route_to(:controller => "praises", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/praises/1/edit" }.should route_to(:controller => "praises", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/praises" }.should route_to(:controller => "praises", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/praises/1" }.should route_to(:controller => "praises", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/praises/1" }.should route_to(:controller => "praises", :action => "destroy", :id => "1")
    end

  end
end
