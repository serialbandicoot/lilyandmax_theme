##leave
#Deface::Override.new(:virtual_path => 'spree/products/show',
#                     :name => 'remove_product_properties_from_top_columns',
#                     :remove => '[data-hook="product_properties"]')

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_product_properties_to_description',
                     :replace => '[data-hook="product_properties"]',
                     :text => %q{
                        <div data-hook="product_properties">
                          <% unless @product_properties.empty? %>
                            <h6 class="property-section-title"><%= t('properties')%></h6>
                            <table id="product-properties" class="table-display" data-hook width="100%">
                              <tbody>
                                <% for product_property in @product_properties
                                  css_class = cycle('even',   'odd') %>
                                  <tr class="<%= css_class %>">
                                    <td><strong><%= product_property.property.presentation %></strong></td>
                                    <td><%= product_property.value %></td>
                                  </tr>
                                <% end %>
                              </tbody>
                            </table>
                          <% end %>
                        </div>
                      })