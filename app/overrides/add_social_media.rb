Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'email_to_friend_product',
                     :insert_bottom => '[data-hook="product_right_part_wrap"]',
                     :text => %q{
                     <div id="social_networking">
                          <h6 class="product-section-title">Tell your friends</h6>
                          <div id="email_to_friend">
                            <%= link_to t('email_to_friend.send_to_friend'), email_to_friend_url('product', @product) %>
                          </div>
                          <div id="fb-root"></div>
                            <script>(function(d, s, id) {
                              var js, fjs = d.getElementsByTagName(s)[0];
                              if (d.getElementById(id)) return;
                              js = d.createElement(s); js.id = id;
                              js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                              fjs.parentNode.insertBefore(js, fjs);
                            }(document, 'script', 'facebook-jssdk'));</script>
                          <div id="facebook">
                            <div class="fb-like" data-send="true" data-layout="button_count" data-width="200" data-show-faces="true"></div>
                          </div>
                          <div id="twitter">
                            <a href="https://twitter.com/share" class="twitter-share-button" data-via="lilyandmax_uk">Tweet</a>
                            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                          </div>
                          <div id="google">
                            <script type="text/javascript">
                              (function() {
                                var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
                                po.src = 'https://apis.google.com/js/plusone.js';
                                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
                              })();
                            </script>
                            <g:plusone expr:href='data:post.url' size='medium'/>
                          </div>
                       </div>

                     })
#
#Deface::Override.new(:virtual_path => 'spree/products/show',
#             :name => 'add_facebook',
#             :insert_bottom => '[data-hook="social_network"]',
#             :text => %q{
#
#             })


#
#<div id="facebook" data-hook="facebook_network">
#                                         <h6 class="product-section-title">Social</h6>
#                                          <div id="fb-root"></div>
#                                          <script>(function(d, s, id) {
#                                            var js, fjs = d.getElementsByTagName(s)[0];
#                                            if (d.getElementById(id)) return;
#                                            js = d.createElement(s); js.id = id;
#                                            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
#                                            fjs.parentNode.insertBefore(js, fjs);
#                                          }(document, 'script', 'facebook-jssdk'));</script>
#                             <div id="facebook">
#                                <h6>facebook</h6>
#                                <div class="fb-like" data-send="false" data-width="50" data-show-faces="false"></div>
#                             </div>
#                          </div>