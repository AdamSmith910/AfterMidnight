<div class="panel panel-default table">
  <div class="panel heading">
  <% @results.sort_by { |result| Geocoder::Calculations.distance_between(@coords, [result.lat, result.lng]) }.each do |result| %>
    <% if result.opening_hours && result.opening_hours['open_now'] == true %>
      <h3 class='panel-title'>
        <%= result.name %>
      </h3>
      <iframe
            width="200"
            height="200"
            frameborder="0" style="border:0"  
            src="https://www.google.com/maps/embed/v1/view?key=AIzaSyAqeTLVAmIQLoohXsO25ULnKW_VX8I7bn4&center=<%=result.lat%>,<%=result.lng%>&zoom=18">
          </iframe><br/>
      <%= Geocoder::Calculations.distance_between(@coords, [result.lat,result.lng]).round(2) %> miles %>
      <% end %>
    <% end %>
  </div>
</div>


<div class="container">
  <table class="table table-bordered table-hover">
    <tr>
      <th class="text-left">Name</th>
      <th class="text-left">Distance from you</th>
      <th class="text-left">Map</th>
    </tr>
    <% @results.each do |result| %>
        <% if result.opening_hours && result.opening_hours['open_now'] == true %>

   <tr>
          <td><%= result.name %></td>
          <td>
          <%=Geocoder::Calculations.distance_between(@coords, [result.lat,result.lng]).round(2) %> miles
          </td>
          <td><iframe
                width="200"
                height="200"
                frameborder="0" style="border:0"  
                src="https://www.google.com/maps/embed/v1/view?key=AIzaSyAqeTLVAmIQLoohXsO25ULnKW_VX8I7bn4&center=<%=result.lat%>,<%=result.lng%>&zoom=18">
              </iframe>
          </td>
      </tr>
        <% end %>

    <% end %>
  </table>
</div>