Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_welcome_back_user_to_header',
                     :insert_before => %q{#header[data-hook]},
                     :text => %q{
                                <div id="welcome_back">
                                    <% if current_user %>
                                      <h6><%= t('welcome_back') %> <%= current_user.email %> </h6>
                                    <% end %>
                                </div>
                              })

