<!-- Hero Section -->
<div id="comedians-holder-hero" class="hero">
	<h4 class="title-preheading">Local and touring</h4>
	<h1 class="banner-title">$Title</h1>   
</div>
<%-- holder list --%>
<div id="comedian-holder-list">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12 large-search-container">
				$SearchForm
			</div>
		</div>
		<div class="row mobile tablet">
			<% loop $GroupedChildren.GroupedBy(ChildFirstLetter) %>
			<div class="col-md-3">
				<button class="comedian-first-letter accordion">
					$ChildFirstLetter
				</button>
				<div class="accordion-content">
					<% loop $Children %>
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
					<% end_loop %>
				</div>
			</div>
			<% end_loop %>
		</div>
		<div class="row desktop-only-row">
			<% if $ShowChildren.MoreThanOnePage %>
				<div id="comedians-pagination" class="col-12">
					<% if $ShowChildren.NotFirstPage %>
							 <a class="pag-prev" href="$ShowChildren.PrevLink">Prev</a>
					<% end_if %>
					<% loop $ShowChildren.PaginationSummary %>
							<% if $CurrentBool %>
									$PageNum
							<% else %>
									<% if $Link %>
											<a href="$Link">$PageNum</a>
									<% else %>
											...
									<% end_if %>
							<% end_if %>
					<% end_loop %>
					<% if $ShowChildren.NotLastPage %>
							 <a class="pag-next" href="$ShowChildren.NextLink">Next</a>
					<% end_if %>
				 </div>
			<% end_if %>
		</div>
	 </div>
</div>
<% include ContactPerformerBanner %> 