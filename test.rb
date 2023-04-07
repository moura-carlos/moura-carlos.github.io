# define the starting and ending values for the id
start_id = 36
end_id = 39

# loop through the range of ids and generate the HTML for each
(start_id..end_id).each do |id|
  puts <<~HTML
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list#{id}')">Controller</h5>
      <ul id="list#{id}" class="collapsibleList">
        <li></li>
        <li></li>
        <li></li>
      </ul>
    </div>
  HTML
end
