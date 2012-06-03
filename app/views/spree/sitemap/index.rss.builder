xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"

xml.rss "version" => "2.0", "xmlns:g" => "http://base.google.com/ns/1.0" do
  xml.channel do
    xml.title Spree::GoogleMerchant::Config[:google_merchant_title]
    xml.description Spree::GoogleMerchant::Config[:google_merchant_description]

    production_domain = Spree::GoogleMerchant::Config[:production_domain]
    xml.link production_domain

    @products.each do |product|
      xml.item do
        xml.id product.id.to_s
        xml.title product.name
        xml.description product.description
        xml.link production_domain + 'parties/products/' + product.permalink
        xml.tag! "g:mpn", product.sku.to_s
        xml.tag! "g:id", product.id.to_s
        xml.tag! "g:price", product.price.to_s
        xml.tag! "g:condition", "new"
        xml.tag! "g:image_link", product.images.first.attachment.url(:product) unless product.images.empty?
        xml.tag! "g:availability", "in stock"
        xml.tag! "g:product_type", "Arts &amp; Entertainment &gt; Party &amp; Celebration &gt; Party Supplies"
        xml.tag! "g:google_product_category", "Arts &amp; Entertainment &gt; Party &amp; Celebration &gt; Party Supplies"
        xml.tag! "g:brand", product.brand.to_s
      end
    end
  end
end