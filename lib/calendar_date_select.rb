require "calendar_date_select/calendar_date_select.rb"
require "calendar_date_select/form_helpers.rb"
require "calendar_date_select/includes_helper.rb"

module CalendarDateSelect
  class Engine < Rails::Engine
    config.after_initialize do
      ActionView::Helpers::FormHelper.send(:include, CalendarDateSelect::FormHelpers)
      ActionView::Base.send(:include, CalendarDateSelect::FormHelpers)
      ActionView::Base.send(:include, CalendarDateSelect::IncludesHelper)
    end
  end
end