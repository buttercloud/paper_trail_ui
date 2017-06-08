require 'will_paginate/array'
require 'yaml'
require_dependency "paper_trail_ui/application_controller"

module PaperTrailUi
  class ReportsController < ApplicationController
    MODEL_NAMES = PaperTrail::Version.select("DISTINCT item_type").map(&:item_type)
    EVENT_TYPES = PaperTrail::Version.select("DISTINCT event").map(&:event)
    def index
      @model_names = {"All" => ""}.merge(MODEL_NAMES.reduce({}){|a, x| a[x] = x; a})
      @event_names = {"All" => ""}.merge(EVENT_TYPES.reduce({}){|a, x| a[x] = x; a})
      @query = PaperTrail::Version.search params[:q]
      @versions = @query.result(distinct: true).paginate(page: params[:page], per_page: 100)
    end

    def show
      @version = PaperTrail::Version.find params[:id]
      @object = YAML.load(@version.object)
    end
  end
end