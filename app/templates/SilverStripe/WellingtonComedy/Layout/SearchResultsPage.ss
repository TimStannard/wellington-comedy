<%-- hero --%>
<div id="searchresults-hero" class="hero">
	<h2>Search results</h2>
</div>
				
<%-- results list --%>
<div id="searchresults-list" class="large-search-container">
     <div class="container-fluid">
     	<div class="row">
     		<div id="results-number" class="col-sm-12">
     			<% if $SingleResult %>
				<p><i class="fas fa-search"></i> Found 1 result for '$Keywords':</p>
				<% end_if %>
				<% if $ManyResult %>
				<p><i class="fas fa-search"></i> Found $ResultsCount results for '$Keywords':</p>
				<% end_if %>
				<% if $NoResult %>
				<p><i class="fas fa-search"></i> Found no results for '$Keywords'.</p>
				<% end_if %>
			</div>
		</div>
        <% if $Comics %>
          	<div class="row">
          	<% loop $Comics %>
				<div class="col-md-3 col-sm-12">
					<div class="comedian-list-item">
						<% if $Photo %>
							<a href="$Link">
								<% with $Photo.Fit(50,50) %>
									<div>
										<img class="comic-profile-image" src="$URL" alt="" />
									</div>
								<% end_with %>
						<% end_if %>
						<p class="sm">$Title</p></a>
					</div>
				</div>
			<% end_loop %>
		<% end_if %>
		<% if $Events %>
			<div class="row">
			<% loop $Events %>
				<div class="col-md-3 col-sm-12 upcoming-event">
					<div class="upcoming-event-inner">
						<% if $Image %>
							<a href="$Link">$Image</a>
						<% end_if %>
						<div class="upcoming-text-container">
							<a href="$Link">
								<p class="gig-link">Event: $Title</p>
							</a>
						</div>
					</div>
				</div>
			<% end_loop %>
			</div>
		<% end_if %>
		<% if not $Comics && not $Events %>
			<div class="row">
				<div class="col-sm-12">
					<p class="error-search">Whoops, we couldn't find any matches. Try using some different search words?</p>
					$SearchForm
				</div>
			</div>
		<% end_if %>
        </div>
     </div>
  </div>
<div>