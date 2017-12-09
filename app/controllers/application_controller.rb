class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_copyright

  def set_copyright
    @copyright = DragonViews::Renderer.copyright "Dragons", "All rights reserved"
  end
end


module DragonViews
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | #{name} #{msg}".html_safe
    end
  end
end