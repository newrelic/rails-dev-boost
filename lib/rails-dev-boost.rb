#
# Only enable rails-dev-boost if:
#
#   * FORCE_RELOAD environment variable is unset; or
#   * FORCE_RELOAD looks like some sort of false value
#
if ENV["FORCE_RELOAD"].blank? || !["yes", "true", "1", "on"].include?(ENV["FORCE_RELOAD"])
  require 'rails_development_boost' # require the proper module in case somebody forgets to tell bundler to :require => 'rails_development_boost'
  RailsDevelopmentBoost.init!
end

