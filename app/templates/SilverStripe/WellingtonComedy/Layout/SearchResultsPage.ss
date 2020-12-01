<div id="home-week-ofit" class="page-section squeeze-in" style="margin-top:90px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="upcoming-header">
					<h2>Search results</h2>
				</div>
					<% loop $Comics %>
						<div class="col">
						<a href="$Link">$Photo.Fit(200,200)
					    $Title</a>
						</div>
					<% end_loop %>
					<% loop $Events %>
						<div class="col">
						<a href="$Link">$Image.Fit(200,200)
					    $Title</a>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div>
	</div>
</div>