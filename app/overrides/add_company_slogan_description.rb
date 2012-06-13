# encoding: utf-8
Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_company_slogan_description',
                     :insert_after => %q{#header[data-hook]},
                     :text => %q{
                                <div id="company_slogan">
                                  <h4>Our Party Kits have everything you need to create the perfect party! Kits from £35.00</h4>
                                </div>
                              })