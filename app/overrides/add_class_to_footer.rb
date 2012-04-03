Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_class_to_footer',
                     :set_attributes => '#footer[data-hook]',
                     :attributes => { :class => 'container' })


Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_columns_to_footer',
                     :insert_before => '#footer-left',
                     :text => %q{
                        <div data-hook="footer_columns">
                            <div class="columns_three">
                               <h3><span>Customer Service</span></h3>
                                <li><%= link_to "Delivery Information", delivery_path %></li>
                                <li><%= link_to "FAQ's", faq_path %></li>
                                <li><%= link_to "Returns Policy", return_path %></li>
                                <li><%= link_to "Terms and Conditions", tandc_path %></li>
                                <p></p>
                            </div>
                            <div class="columns_about_us">
                            <h3><span>About us</span></h3>
                                <li><%= link_to "About us", about_path %></li>
                                <li><a href="http://www.lilyandmax.co.uk/store/blog">Blog</li>
                                <li><%= link_to "Newsletter", news_letter_path %></li>
                                <li><%= link_to "Contact us", contact_us_path %></li>
                            </div>
                            <div class="columns_four">
                              <h3><span>Payment options</span></h3>
                                <!-- Moneybookers -->
                                <a href='https://www.moneybookers.com/'>
                                <img src='/assets/plain-four-versions-rgb_168x45.gif' border="0" alt='https://www.moneybookers.com/'>
                                &nbsp;
                                <!-- PayPal Logo -->
                                <a href="#" onclick="javascript:window.open('https://www.paypal.com/uk/cgi-bin/webscr?cmd=xpt/Marketing/popup/OLCWhatIsPayPal-outside','olcwhatispaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=400, height=500');"><img  src="https://www.paypal.com/en_GB/Marketing/i/logo/PayPal_logo_80x35.gif" border="0" alt="PayPal-Standard-Logo"></a><!-- PayPal Logo -->
                            </div>
                            <div class="columns_five">
                              <h3><span>Website security</span></h3>
                              <div class='comodo'>
                                <a href="http://www.comodo.com/e-commerce/ssl-certificates/secure-server.php">
                                <img src="/assets/SSL_200x40_ani2.gif" border="0" alt="Click Here for 30 day free trial">
                                </a><a href="http://www.comodo.com/e-commerce/ssl-certificates/secure-server.php" id="cnbanner">SSL</a>
                                <script language="JavaScript" src="http://www.comodo.com/javascript/banner.js" type="text/javascript"></script>
                              </div>
                            </div>

                        </div>
                      })




