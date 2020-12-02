<%-- hero --%>
<div id="searchresults-hero" class="hero">
	<h2>Search results</h2>
	<p>Showing results for "$Keywords"	
</div>
				
<%-- results list --%>
<div id="searchresults-list" class="large-search-container">
     <div class="container-fluid">
        <div class="row">
        <% if $Comics %>
          <% loop $Comics %>
			<div class="col">
			<a href="$Link">$Photo.Fit(200,200)
		    $Title</a>
			</div>
		<% end_loop %>
		<% end_if %>
		<% if $Events %>
		<% loop $Events %>
			<div class="col">
			<a href="$Link">$Image.Fit(200,200)
		    $Title</a>
			</div>
		<% end_loop %>
		<% end_if %>
		 <% if not $Comics && not $Events %>
		 <p class="error-search">Whoops, we couldn't find any matches. Try using some different search words?</p>
		 $SearchForm
		 <% end_if %>
        </div>
     </div>
  </div>
<div>