require 'will_paginate/array'
require 'yaml'
require_dependency "paper_trail_ui/application_controller"

module PaperTrailUi
  class ReportsController < ApplicationController
    MODEL_NAMES = PaperTrail::Version.select("DISTINCT item_type").map(&:item_type)
    EVENT_TYPES = PaperTrail::Version.select("DISTINCT event").map(&:event)
    ACTOR_NAMES = PaperTrail::Version.select("DISTINCT whodunnit").map(&:whodunnit)

    def index
      @model_names = array_to_filter_hash(MODEL_NAMES)
      @event_names = array_to_filter_hash(EVENT_TYPES)
      @actor_names = array_to_filter_hash(ACTOR_NAMES)
      @query = PaperTrail::Version.search params[:q]
      @versions = @query.result(distinct: true).paginate(page: params[:page], per_page: 100)
    end

    def show
      @version = PaperTrail::Version.find params[:id]
      @object = YAML.load(@version.object || "---") || {}
    end

    private
      def array_to_filter_hash(array)
        {"All" => ""}.merge(array.reduce({}){|a, x| a[x] = x; a})
      end
  end
end