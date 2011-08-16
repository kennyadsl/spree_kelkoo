class KelkooConfiguration < Configuration
  preference :kelkoo_title, :string, :default => 'My Spree Shop'
  preference :kelkoo_description, :string, :default => 'List of our products'
  preference :production_domain, :string, :default => 'http://www.myspreeshop.com/'
end
