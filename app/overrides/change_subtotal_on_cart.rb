Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                     :name => 'replace_button_text',
                     :replace => '[data-hook="buttons"]',
                     :text => %q{ <div class="form-buttons" data-hook="buttons">
                                    <%= submit_tag t(:pay_and_confirm), :class => 'continue button primary' %>
                                    <script>disableSaveOnClick();</script>
                                  </div>
                              })