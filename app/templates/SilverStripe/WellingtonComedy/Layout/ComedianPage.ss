<!-- Hero Section -->
<div id="comedian-profile-hero" class="hero">
		 <h2 class="white">Comedian profile</h2>
</div>
<%-- comic profile section --%>
<div id="comedian-profile-container" class="regular-bg">
	<div class="container-fluid">
		<div class="row comedian-profile-row wavy-section-bg">
			<div class="col-md-4 col-lg-5">
				<div class="comic-profile-img">
					$Photo.ScaleWidth(200)
				</div>
			</div>
			<div class="col-md-8 col-lg-7 comic-profile-description lato">
				<h1>$Title</h1>   
				<p class="comic-short-blurb">$Blurb</p>
				<div id="comic-profile-text">$Profile</div>
			</div>
		</div>
	</div>
</div>

<% if $ComedianEvents %>
<div id="comedian-upcoming-shows" class="page-section equal squeeze-in light-bg">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="upcoming-header">
					<h2 class="wavy">PERFORMING IN:</h2>
				</div>
			</div>
			<% if $ComedianEvents %>
				<% loop $ComedianEvents %>
				<div class="col-sm-4 col-md-4 col-lg-4 upcoming-event card-event">
					<% if $Image %>
					<a href="$Link">$Image</a>
					<% end_if %>
					<div class="upcoming-text-container">
						<a href="$Link">
							<h4 class="gig-link">$Title</h4>
						</a>
						<p class="event-date">$DateRange</p>
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