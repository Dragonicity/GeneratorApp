module ApplicationHelper
  def copyright_generator
    DragonViews::Renderer.copyright "Dragons", "All rights reserved"
  end
end
