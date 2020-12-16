<%-- hero --%>
<div id="searchresults-hero" class="hero">
	<h1 class="white">Search results</h1>
</div>
				
<%-- results list --%>
<div id="searchresults-list" class="large-search-container regular-bg">
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
				<div class="col-md-4 col-lg-3 col-sm-12">
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
			</div>
		<% end_if %>
		<% if $Events %>
			<div class="row">
			<% loop $Events %>
				<div class="col-md-4 col-lg-3 col-sm-12 upcoming-event">
					<a href="$Link">
						<div class="upcoming-event-inner">
							<% if $Image %>
								$Image
							<% end_if %>
							<div class="sm-upcoming-gig-title">
								<p class="gig-link">Event: $Title</p>
							</div>
						</div>
					</a>
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