require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe AchievementsController do

  def mock_achievement(stubs={})
    @mock_achievement ||= mock_model(Achievement, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all achievements as @achievements" do
      Achievement.stub(:all) { [mock_achievement] }
      get :index
      assigns(:achievements).should eq([mock_achievement])
    end
  end

  describe "GET show" do
    it "assigns the requested achievement as @achievement" do
      Achievement.stub(:find).with("37") { mock_achievement }
      get :show, :id => "37"
      assigns(:achievement).should be(mock_achievement)
    end
  end

  describe "GET new" do
    it "assigns a new achievement as @achievement" do
      Achievement.stub(:new) { mock_achievement }
      get :new
      assigns(:achievement).should be(mock_achievement)
    end
  end

  describe "GET edit" do
    it "assigns the requested achievement as @achievement" do
      Achievement.stub(:find).with("37") { mock_achievement }
      get :edit, :id => "37"
      assigns(:achievement).should be(mock_achievement)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created achievement as @achievement" do
        Achievement.stub(:new).with({'these' => 'params'}) { mock_achievement(:save => true) }
        post :create, :achievement => {'these' => 'params'}
        assigns(:achievement).should be(mock_achievement)
      end

      it "redirects to the created achievement" do
        Achievement.stub(:new) { mock_achievement(:save => true) }
        post :create, :achievement => {}
        response.should redirect_to(achievement_url(mock_achievement))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved achievement as @achievement" do
        Achievement.stub(:new).with({'these' => 'params'}) { mock_achievement(:save => false) }
        post :create, :achievement => {'these' => 'params'}
        assigns(:achievement).should be(mock_achievement)
      end

      it "re-renders the 'new' template" do
        Achievement.stub(:new) { mock_achievement(:save => false) }
        post :create, :achievement => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested achievement" do
        Achievement.stub(:find).with("37") { mock_achievement }
        mock_achievement.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :achievement => {'these' => 'params'}
      end

      it "assigns the requested achievement as @achievement" do
        Achievement.stub(:find) { mock_achievement(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:achievement).should be(mock_achievement)
      end

      it "redirects to the achievement" do
        Achievement.stub(:find) { mock_achievement(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(achievement_url(mock_achievement))
      end
    end

    describe "with invalid params" do
      it "assigns the achievement as @achievement" do
        Achievement.stub(:find) { mock_achievement(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:achievement).should be(mock_achievement)
      end

      it "re-renders the 'edit' template" do
        Achievement.stub(:find) { mock_achievement(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested achievement" do
      Achievement.stub(:find).with("37") { mock_achievement }
      mock_achievement.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the achievements list" do
      Achievement.stub(:find) { mock_achievement }
      delete :destroy, :id => "1"
      response.should redirect_to(achievements_url)
    end
  end

end
