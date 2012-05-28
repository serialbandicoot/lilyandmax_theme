# encoding: utf-8
Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'further_product_info',
                     :insert_after => '[data-hook="product_right_part_wrap"]',
                     :text => %q{
                              <div id="further_product_info">
                                  <%= @product.spree_additional_info %>
                              </div>})