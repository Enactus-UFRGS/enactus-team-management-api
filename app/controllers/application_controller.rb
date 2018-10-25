class ApplicationController < ActionController::Base
  include HttpAcceptLanguage::AutoLocale
  include LayoutConcern
  protect_from_forgery with: :exception
end
