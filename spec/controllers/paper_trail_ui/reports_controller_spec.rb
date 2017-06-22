require "rails_helper"
require "paper_trail"
require "ransack"
require "paper_trail/frameworks/active_record/models/paper_trail/version"
require 'haml'

describe PaperTrailUi::ReportsController, type: :controller do
  describe "#index" do
    it "should render the index view" do
      get :index, {use_route: :paper_trail_ui}

      expect(response).to render_template("index")
    end
  end
  
  describe "#show" do
    it "should render the show view" do
      item = PaperTrail::Version.create!(event: "create", item_type: "Test", item_id: 1)
      get :show, {id: item.id, use_route: :paper_trail_ui}

      expect(response).to render_template("show")
    end
  end
end