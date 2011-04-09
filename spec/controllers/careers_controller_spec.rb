require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CareersController do

  def mock_career(stubs={})
    @mock_career ||= mock_model(Career, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all careers as @careers" do
      Career.stub(:all) { [mock_career] }
      get :index
      assigns(:careers).should eq([mock_career])
    end
  end

  describe "GET show" do
    it "assigns the requested career as @career" do
      Career.stub(:find).with("37") { mock_career }
      get :show, :id => "37"
      assigns(:career).should be(mock_career)
    end
  end

  describe "GET new" do
    it "assigns a new career as @career" do
      Career.stub(:new) { mock_career }
      get :new
      assigns(:career).should be(mock_career)
    end
  end

  describe "GET edit" do
    it "assigns the requested career as @career" do
      Career.stub(:find).with("37") { mock_career }
      get :edit, :id => "37"
      assigns(:career).should be(mock_career)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created career as @career" do
        Career.stub(:new).with({'these' => 'params'}) { mock_career(:save => true) }
        post :create, :career => {'these' => 'params'}
        assigns(:career).should be(mock_career)
      end

      it "redirects to the created career" do
        Career.stub(:new) { mock_career(:save => true) }
        post :create, :career => {}
        response.should redirect_to(career_url(mock_career))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved career as @career" do
        Career.stub(:new).with({'these' => 'params'}) { mock_career(:save => false) }
        post :create, :career => {'these' => 'params'}
        assigns(:career).should be(mock_career)
      end

      it "re-renders the 'new' template" do
        Career.stub(:new) { mock_career(:save => false) }
        post :create, :career => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested career" do
        Career.stub(:find).with("37") { mock_career }
        mock_career.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :career => {'these' => 'params'}
      end

      it "assigns the requested career as @career" do
        Career.stub(:find) { mock_career(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:career).should be(mock_career)
      end

      it "redirects to the career" do
        Career.stub(:find) { mock_career(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(career_url(mock_career))
      end
    end

    describe "with invalid params" do
      it "assigns the career as @career" do
        Career.stub(:find) { mock_career(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:career).should be(mock_career)
      end

      it "re-renders the 'edit' template" do
        Career.stub(:find) { mock_career(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested career" do
      Career.stub(:find).with("37") { mock_career }
      mock_career.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the careers list" do
      Career.stub(:find) { mock_career }
      delete :destroy, :id => "1"
      response.should redirect_to(careers_url)
    end
  end

end
