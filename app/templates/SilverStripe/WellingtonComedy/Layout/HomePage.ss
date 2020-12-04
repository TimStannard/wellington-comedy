<!-- Hero Section -->
<div id="home-hero" class="hero-section">
<div class="container-fluid p-0">
	<div class="row no-gutters">
		<div class="col">
			<!-- Slider main container -->
			<div class="swiper-container todays-events-swiper">
				<!-- Additional required wrapper -->
				<div class="swiper-wrapper">
					<!-- Slides -->
					<% if $TodaysFeaturedEvents %>
						<% loop $TodaysFeaturedEvents %>
							<% if $SliderImage %>
								<div class="swiper-slide" class="image-contained-slide" style="background: url($SliderImage.Link) no-repeat; background-position: 100% 100%;">
								<% else %>
								<div class="swiper-slide" class="image-contained-slide" style="background: url($DefaultImage.Link) no-repeat; background-position: 100% 100%;">
							<% end_if %>
							<h2>LIVE COMEDY</h2>
							<div class="hero-subheader wavy">FEATURED TONIGHT</div>
							<a href="$Link">
								<h1 class="hero-gig-link">$Title</h1>
							</a>
							<div class="todays-event-blurb non-mobile shadow-blu">$ShortBlurb</div>
							<div class="todays-event-blurb mobile">$ShortBlurb.LimitCharacters(180)</div>
							<a href="$TicketLink">
								<button class="cta-btn">get tickets</button>
							</a>
							</div>
						<% end_loop %>
					<% end_if %>
					<% if $TodaysEvents %>
						<% loop $TodaysEvents %>
							<% if $SliderImage %>
								<div class="swiper-slide" class="image-contained-slide" style="background: url($SliderImage.Link) no-repeat; background-size: cover; background-position: 100% 100%;">
							<% else %>
								<div class="swiper-slide" class="image-contained-slide" style="background: url($DefaultImage.Link) no-repeat; background-size: cover; background-position: 100% 100%;">
							<% end_if %>
							<h2>LIVE COMEDY</h2>
							<div class="hero-subheader wavy">WHAT’S ON TONIGHT</div>
							<a href="$Link">
								<h1 class="hero-gig-link">$Title</h1>
							</a>
							<div class="todays-event-blurb non-mobile shadow-blu">$ShortBlurb</div>
							<div class="todays-event-blurb mobile">$ShortBlurb.LimitCharacters(180)</div>
							<a href="$TicketLink">
								<button class="cta-btn">get tickets</button>
							</a>
							</div>
						<% end_loop %>
					<% end_if %>
					<% if not $TodaysEvents && not $TodaysFeaturedEvents%>
						<div class="swiper-slide" class="image-contained-slide" style="background: url($HomeImage.Link) no-repeat; background-size: cover; background-position: 100% 100%;">
							<h2 id="default-hero-h2">LOCAL TALENT</h2>
							<div class="hero-subheader wavy">WELCOME TO</div>
							<h1>Wellington Comedy</h1>
							<div class="todays-event-blurb shadow-blu">$HomePageBlurb</div>
							<a href="{$BaseURL}upcoming-shows">
								<button class="cta-btn">UPCOMING SHOWS</button>
							</a>
						</div>
					<% end_if %>  
					</div>
					<!-- pagination -->
					<div class="swiper-pagination wow fadeIn" data-wow-delay="0.4s"></div>
					<!-- navigation buttons -->
					<div class="swiper-button-prev wow fadeIn" data-wow-delay="0.4s"></div>
					<div class="swiper-button-next wow fadeIn" data-wow-delay="0.4s"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="home-week-ofit" class="page-section squeeze-in light-bg">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="upcoming-header">
					<h2>coming up</h2>
				</div>
			</div>
				<% if $GetWeekEvents %>
					<% loop $GetWeekEvents.Limit(4) %>
						<div class="col-md-6 col-lg-3 upcoming-event">
							<% if $Image %>
								<a href="$Link">$Image</a>
							<% end_if %>
							<div class="upcoming-text-container">
								<h4 class="gig-link wavy">$Title</h4>
								<p class="event-date">$DateRange</p>
								<p class="todays-event-blurb sm">$ShortBlurb.LimitCharacters(180)</p>
								<a href="$Link">
									<button class="cta-btn sm">Read more</button>
								</a>
							</div>
						</div>
					<% end_loop %>
				<% else %>
				<h1>No upcoming events. Check back soon!</h1>
				<% end_if %>
			</div>
		</div>
	</div>
</div>

<% include ContactMinimalBanner %> 