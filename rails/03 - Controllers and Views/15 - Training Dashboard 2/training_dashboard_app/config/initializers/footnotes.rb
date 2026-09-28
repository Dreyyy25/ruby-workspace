if Rails.env.development?
  begin
    require 'rails-footnotes'
    Footnotes.run!
  rescue LoadError, StandardError => e
    Rails.logger.warn "Failed to load rails-footnotes: #{e.message}"
  end
end