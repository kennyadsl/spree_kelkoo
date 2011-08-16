xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"

  xml.products do
    #xml.title Spree::Kelkoo::Config[:kelkoo_title]
    #xml.description Spree::Kelkoo::Config[:kelkoo_description]
    
    production_domain = Spree::Kelkoo::Config[:production_domain]
    #xml.link production_domain
    
    @products.each do |product|
      xml.product do
        if product.taxons.any? 
          cats = []
          product.taxons.each do |taxon|
            if taxon.parent && taxon.parent.name == "Marche"
              xml.Manufacturer taxon.name
            else
              if cats.empty?
                while taxon.parent != nil
                  cats << taxon.name
                  taxon = taxon.parent
                end
              end
            end
          end 
          xml.Category cats.reverse.join("#")
         end 
        xml.ProductName product.name.capitalize
        xml.EANcode product.sku.to_s
        xml.Price product_price(product, {:format_as_currency => false})
        xml.DeliveryCost "6.00"
        xml.Deliverytime "1-2 giorni"
        xml.Availability "Disponibile"
        xml.ProductUrl production_domain + 'products/' + product.permalink
        xml.ImageUrl production_domain.sub(/\/$/, '') + product.images.first.attachment.url(:product) unless product.images.empty?
        xml.Description CGI.escapeHTML(product.description) if product.description
      end
    end
end
