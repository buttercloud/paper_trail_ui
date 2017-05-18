require 'will_paginate/array'
require_dependency "paper_trail_ui/application_controller"

module PaperTrailUi
  class ReportsController < ApplicationController
    def index
      @model_names = PaperTrail::Version.select("DISTINCT item_type").map(&:item_type)
    end

    def show
      
    end
  end
end