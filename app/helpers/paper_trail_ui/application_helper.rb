module PaperTrailUi
  module ApplicationHelper

    def row_counter_with_paging(index, options={})
      current_page = (params[options[:page_param] || :page] || 1).to_i
      per_page = options[:per_page] || WillPaginate.per_page
      ((current_page-1)*per_page)+index+1
    end
  end
end
