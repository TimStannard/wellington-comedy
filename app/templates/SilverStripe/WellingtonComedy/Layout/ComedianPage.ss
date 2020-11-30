<!-- Hero Section -->
<div id="comedian-profile-hero" class="hero">
		 <h2 class="white">Comedian profile</h2>
</div>
<%-- comic profile section --%>
<div id="comedian-profile-container">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
					<div class="comic-profile-img">
						$Photo.ScaleWidth(200)
					</div>
			</div>
			<div class="col-md-8 comic-profile-description lato">
				<h1 class="wavy">$Title</h1>   
				<p class="comic-short-blurb">$Blurb</p>
				<div class="sm">$Profile</div>
			</div>
		</div>
	</div>
</div>

<% if $ComedianEvents %>
<div id="comedian-upcoming-shows" class="page-section equal squeeze-in">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="upcoming-header">
					<h2>Upcoming performances</h2>
				</div>
			</div>
			<% if $ComedianEvents %>
				<% loop $ComedianEvents %>
				<div class="col-sm-3 upcoming-event">
					<% if $Image %>
					<a href="$Link">$Image</a>
					<% end_if %>
					<div class="upcoming-text-container">
						<a href="$Link">
							<h4 class="gig-link wavy">$Title</h4>
						</a>
						<p class="event-date">$DateRange</p>
						<p class="todays-event-blurb sm">$ShortBlurb.LimitCharacters(180)</p>
						<a href="$Link">
							<button class="cta-btn sm">Read more</button>
						</a>
					</div>
				</div>
				<% end_loop %>
			<% end_if %>
			</div>
		</div>
	</div>
</div>
<% end_if %>
<div id="goback-container" class="small-section">
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<button class="cta-btn sm" onclick="javascript:history.back()">&#8592; Go back</button>
			</div>
		</div>
	</div>
</div>