module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_action :set_page_defaults
  end

   def set_page_defaults
    @page_title = "Elizabeth Simonian | Portfolio"
    @seo_keywords = "Elizabeth Simonian Portfolio"
  end
end