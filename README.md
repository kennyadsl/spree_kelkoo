Summary
=======

Provides a live product feed for Kelkoo rather a file that you have to upload. This is a very basic extension so feel free to help improve it!

To access the feed visit:

    http://yoursite.com/products/kelkoo.rss

Installation
------------

To start with you'll need a Kelkoo account. Then:
  
    gem "spree_kelkoo", :git => 'git://github.com/spree/spree_kelkoo.git'
    
    bundle install

    rake spree_kelkoo:install
    
To configure the feed title, description and site URL go to the Kelkoo settings page in Admin -> Configuration

Copyright (c) 2011 kennyadsl, released under the New BSD License
