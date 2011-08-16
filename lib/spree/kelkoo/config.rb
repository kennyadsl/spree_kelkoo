module Spree
  module Kelkoo
    class Config
      include Singleton
      include PreferenceAccess
    
      class << self
        def instance
          return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
          KelkooConfiguration.find_or_create_by_name("Kelkoo configuration")
        end
      end
    end
  end
end
