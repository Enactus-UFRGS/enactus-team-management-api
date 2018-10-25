module LayoutConcern
  extend ActiveSupport::Concern

  included do
    layout :layout_by_resource

    private

    def layout_by_resource
      if devise_controller?
        "home"
      else
        "application"
      end
    end
  end
end