<!-- Hero Section -->
<div id="home-hero" class="hero-section">
     <div class="container-fluid p-0">
          <div class="row no-gutters">
               <div class="col">
                     <!-- Slider main container -->
                    <div class="swiper-container todays-events-swiper ">
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
                                   <div class="hero-subheader">FEATURED TONIGHT</div>
                                   <a href="$Link"><h1 class="hero-gig-link">$Title</h1></a>
                                   <div class="todays-event-blurb non-mobile">$ShortBlurb</div>
                                   <div class="todays-event-blurb mobile">$ShortBlurb.LimitCharacters(180)</div>
                                   <a href="$TicketLink"><div class="cta-btn">get tickets</div></a>
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
                                   <div class="hero-subheader">WHAT’S ON TONIGHT</div>
                                   <a href="$Link"><h1 class="hero-gig-link">$Title</h1></a>
                                   <div class="todays-event-blurb non-mobile">$ShortBlurb</div>
                                   <div class="todays-event-blurb mobile">$ShortBlurb.LimitCharacters(180)</div>
                                   <a href="$TicketLink"><div class="cta-btn">get tickets</div></a>
                                   </div>
                              <% end_loop %>
                         <% end_if %>

                         <% if not $TodaysEvents && not $TodaysFeaturedEvents%>
                              <div class="swiper-slide">
                                   <h2 id="default-hero-h2">LOCAL TALENT</h2>
                                   <div class="hero-subheader">WELCOME TO</div>
                                   <h1>Wellington Comedy</h1>
                                   <div class="todays-event-blurb">$HomePageBlurb</div>
                                   <a href="{$BaseURL}upcoming-shows"><div class="cta-btn">UPCOMING SHOWS</div></a>
                              </div>
                         <% end_if %>  

                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination wow fadeIn" data-wow-delay="0.4s"></div>

                        <!-- If we need navigation buttons -->
                        <div class="swiper-button-prev wow fadeIn" data-wow-delay="0.4s"></div>
                        <div class="swiper-button-next wow fadeIn" data-wow-delay="0.4s"></div>
                    </div>
               </div>
          </div>
     </div>
</div>
<div id="home-week-ofit">
     <div class="container-fluid">
          <div class="row">
               <div class="col">
                    <h2>A week of it</h2>
               </div>
          </div>
     </div>
</div>