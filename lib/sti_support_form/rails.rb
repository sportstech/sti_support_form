module StiSupportForm
  VALID_OPTIONS_KEYS = [:sti_app_mon_url].freeze
  
  # Class Methods
  class << self
    attr_accessor *VALID_OPTIONS_KEYS
    
    def included(base)
      base.extend StiSupportForm
    end
    
    def configure
      yield self
    end
  end
  
  # Instance Methods
  def render_support_form(game_entry_id, project_id)
    if defined? Rails
      render :partial => File.expand_path('../../views/form.html.erb', __FILE__), :locals => {:game_entry_id => game_entry_id, :project_id => project_id}
    end
    
  end
end

if defined? Rails
  ActionView::Base.send :include, StiSupportForm
end
