<!-- Hero Section -->
<div id="comedians-holder-hero" class="hero">
	<h4 class="title-preheading">Local and touring</h4>
	<h1 class="banner-title">$Title</h1>   
</div>
<%-- holder list --%>
<div id="comedian-holder-list" class="wavy-section-bg">
	<div class="container-fluid">
		<div class="row mobile">
			<div class="col-sm-12 large-search-container">
				$SearchForm
			</div>
		</div>
		<div class="row mobile accordion-row">
			<% loop $GroupedChildren.GroupedBy(ChildFirstLetter) %>
			<div class="col-md-12">
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
		<div class="row tablet desktop wavy-section-bg">
			<div class="col-md-3">
				<div class="row">
					<div class="col a-z-box">
						<div class="col-md-12">
						<h3>comedian search</h3>
						$SearchForm
						</div>
						<div class="col-md-12">
						<h3>Names A-Z</h3>
						</div>
						<% loop $GroupedChildren.GroupedBy(ChildFirstLetter) %>
						<div class="col-md-12">
							<button class="comedian-first-letter accordion">
								$ChildFirstLetter
							</button>
							<div class="accordion-content">
								<% loop $Children %>
									<div class="comedian-list-item">
									<% if $Photo %>
										<a href="$Link">
											<% with $Photo.Fit(94,94) %>
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
				</div>
			</div>
			<div class="col-md-9 comic-list-col">
				<div class="row tablet desktop">
					<div class="col-md-12">
						<h3>All comedians</h3>
					</div>
					<% loop $ShowChildren %>
					<div class="col-sm-6 col-md-6 col-lg-4 accordion-col">
						<div class="comedian-list-item">
							<% if $Photo %>
								<a href="$Link" class="image-hover-link">
									<% with $Photo.Fit(96,96) %>
										<div>
											<img class="comic-profile-image img-pop-animation" src="$URL" alt="" />
										</div>
									<% end_with %>
							<% end_if %>
							<p class="xs">$Title</p></a>
						</div>
					</div>
					<% end_loop %>
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
	 </div>
</div>
<% include ContactPerformerBanner %> 