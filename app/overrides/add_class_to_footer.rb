Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_class_to_footer',
                     :set_attributes => '#footer[data-hook]',
                     :attributes => { :class => 'container' })


Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_columns_to_footer',
                     :insert_before => '#footer-left',
                     :text => %q{
                        <div data-hook="footer_columns">
                            <div class="columns_customer_service">
                               <h3><span>Customer Service</span></h3>
                                <li><%= link_to "Delivery Information", delivery_path %></li>
                                <li><%= link_to "FAQ's", faq_path %></li>
                                <li><%= link_to "Returns Policy", return_path %></li>
                                <li><%= link_to "Terms and Conditions", tandc_path %></li>
                                <li><%= link_to 'Sitemap', sitemap_path %></li>
                                <p></p>
                            </div>
                            <div class="columns_about_us">
                            <h3><span>About us</span></h3>
                                <li><%= link_to "About us", about_path %></li>
                                <li><a href="http://www.lilyandmax.co.uk/parties/blog">Blog</li>
                                <li><%= link_to "Newsletter", news_letter_path %></li>
                                <li><%= link_to "Contact us", contact_us_path %></li>
                            </div>
                            <div class="columns_payment_options">
                              <h3><span>Payment options</span></h3>
                                <!-- Moneybookers -->
                                <a href='https://www.moneybookers.com/'>
                                <img src='/assets/plain-four-versions-rgb_168x45.gif' border="0" alt='https://www.moneybookers.com/'>

                                <!-- PayPal Logo -->
                                <a href="#" onclick="javascript:window.open('https://www.paypal.com/uk/cgi-bin/webscr?cmd=xpt/Marketing/popup/OLCWhatIsPayPal-outside','olcwhatispaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=400, height=500');"><img  src="https://www.paypal.com/en_GB/Marketing/i/logo/PayPal_logo_80x35.gif" border="0" alt="PayPal-Standard-Logo"></a><!-- PayPal Logo -->
                            </div>
                            <div class="columns_security">
                              <h3><span> Security</span></h3>
                              <div class='comodo'>
                                <a href="http://www.comodo.com/e-commerce/ssl-certificates/secure-server.php">
                                <img src="/assets/SSL_111x91_ani1.gif" border="0" alt="Click Here for 30 day free trial">
                                </a><a href="http://www.comodo.com/e-commerce/ssl-certificates/secure-server.php" id="cnbanner">SSL</a>
                                <script language="JavaScript" src="http://www.comodo.com/javascript/banner.js" type="text/javascript"></script>
                              </div>
                            </div>
                            <div class="columns_newsletter">
                              <h3><span> Newsletter</span></h3>
                                <div id="location_for_newsletter">
                                </div>
                            </div>
                            <div class="columns_social_media">
                              <h3><span> Social</span></h3>
                                <div id="social_media_links">
                                  <a href="https://twitter.com/lilyandmax_uk" class="twitter-follow-button" data-show-count="false" data-show-screen-name="false">Follow @lilyandmax_uk</a>
                                  <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                                </div>
                                <div id="fb-root"></div>
                                  <script>(function(d, s, id) {
                                    var js, fjs = d.getElementsByTagName(s)[0];
                                    if (d.getElementById(id)) return;
                                    js = d.createElement(s); js.id = id;
                                    js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
                                    fjs.parentNode.insertBefore(js, fjs);
                                  }(document, 'script', 'facebook-jssdk'));</script>
                                  <div class="fb-like" data-href="http://www.facebook.com/lilyandmaxparties" data-send="true" data-layout="button_count" data-width="250" data-show-faces="true"></div>
                            </div>

                        </div>
                      })




