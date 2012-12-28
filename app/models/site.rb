class Site < ActiveRecord::Base
  after_update { Rails.cache.clear }

end
