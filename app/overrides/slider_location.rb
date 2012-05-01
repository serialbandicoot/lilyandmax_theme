Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_slider',
                     :remove => '#spree-slider')

#Deface::Override.new(:virtual_path => "spree/home/index",
#                     :name => "lam_add_slider",
#                     :insert_after => "#news_ticker",
#                     :text => %q{
#                     				    <div id='spree-slider' data-hook>
#                                      <p></p>
#                                  		<%= yield :spree_slider %>
#                                	</div>
#                                })