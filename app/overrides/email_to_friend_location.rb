Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'email_to_friend_product',
                     :insert_bottom => '[data-hook="product_right_part_wrap"]',
                     :text => %q{
                       <div id="Social">
                          <div id="email_to_friend">
                            <h6 class="product-section-title">Social</h6>
                            <%= link_to t('email_to_friend.send_to_friend'), email_to_friend_url('product', @product) %>
                          </div>
                       </div>
                     })