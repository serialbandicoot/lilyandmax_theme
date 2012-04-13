#Left the starting work of looking at getting the product properties.
Deface::Override.new(:virtual_path => 'spree/orders/_line_item',
                     :name => 'modify_description_on_line_items',
                     :replace => '[data-hook="cart_item_description"]',
                     :text => %q{
                                <td data-hook="cart_item_description">
                                  <h4><%= link_to variant.product.name, product_path(variant.product) %></h4>
                                  <%= variant.options_text %>
                                  <% if @order.insufficient_stock_lines.include? line_item %>
                                    <span class="out-of-stock">
                                      <%= variant.in_stock? ? t(:insufficient_stock, :on_hand => variant.on_hand) : t(:out_of_stock) %><br />
                                    </span>
                                  <% end %>
                                      <p></p>
                                      <% properties = Spree::ProductProperty.includes(:property).where(:product_id => variant.product.id) %>
                                        <table id="product-properties" class="table-display" data-hook width="100%">
                                            <tbody>
                                                <% for p_properties in properties
                                                css_class = cycle('even', 'odd') %>
                                                <tr class="<%= css_class %>">
                                                  <td><strong><%= p_properties.property.presentation %></strong></td>
                                                  <td><%= p_properties.value %></td>
                                                </tr>
                                              <% end %>
                                            </tbody>
                                          </table>


                                </td>
                      })






