<!-- Hero Section -->
<!-- Hero Section -->
<div id="comedian-profile-hero" class="hero">
		 <h4>Comedian profile</h4>
		<h1 class="white">$Title</h1>   
</div>

<div id="comedian-profile-container">
 <div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
				 <div class="comic-profile-img">
					$Photo.ScaleWidth(200)
					</div>
		</div>
		<div class="col-md-8 comic-profile-description lato">
				 <p class="comic-short-blurb">$Blurb</p>
				 <p class="sm">$Profile</p>
		</div>
		<% if $GetComicEvents %>
		<div class="col-md-12">
				<div class="upcoming-header">
					<h2>coming up</h2>
				</div>
		</div>
		<% loop $GetComicEvents %>
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
					<div class="cta-btn sm">Read more</div>
				</a>
			</div>
		</div>
		<% end_loop %>
		</div>
	 </div>
</div>