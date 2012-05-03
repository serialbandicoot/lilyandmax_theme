Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'add_recently_viewed_products_to_products_index',
                     :remove => "add_recently_viewed_products_to_products_index")

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_recently_viewed_products_to_products_show',
                     :remove => "add_recently_viewed_products_to_products_show")

#Deface::Override.new(:virtual_path => 'spree/shared/_products',
#                     :name => 'add_recently_viewed_products_to_products_index',
#                     :insert_after => "#products[data-hook], [data-hook='products']",
#                     :partial => 'spree/shared/recently_viewed_products')

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_recently_viewed_products_to_products_show',
                     :insert_bottom => '[data-hook="product_right_part_wrap"]',
                     :partial => 'spree/shared/recently_viewed_products')
                     #:text => %{
                     #       <% if get_recently_viewed_products.any? %>
                     #         <div id="recently_viewed">
                     #           <h6 class="product-section-title"><%= t(:recently_viewed_products) %></h6>
                     #           <ul id="recently_viewed_products">
                     #             <% get_recently_viewed_products.each do |p| %>
                     #               <li><%= link_to p.name, p %></li>
                     #             <% end -%>
                     #           </ul>
                     #         </div>
                     #       <% end %>
                     #})