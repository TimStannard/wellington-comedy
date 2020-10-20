<!-- Hero Section -->
<section id="home-hero" class="hero-section" style="border:1px solid white; margin-top:30px; padding:20px;">
     <div class="container-fluid">
          <div class="row">
               <div class="col-md-12 col-sm-12">
                    <h1>What's on tonight</h1>

                    <% loop $ViewEvents %>

                    <div style="border: 1px solid red; padding:20px; border-radius:30px; margin-top:10px; display:inline-block;">
                         <h3 class="summary"><% if Announcement %>$Title<% else %><a class="url" href="$Link">$Title</a><% end_if %></h3>

                           <p class="dates">
                                   <% with $DateTimes %>
                                   <p class="event-dates">$DateRange<% if AllDay %> <% _t('UncleCheese\EventCalendar\Pages\Calendar.ALLDAY','All Day') %><% else %><% if StartTime %> $TimeRange<% end_if %><% end_if %></p>
                              <% end_with %>

                     </div>
                    <% end_loop %>
                    
               </div>
          </div>
     </div>
</section>

<section id="home-hero2" class="hero-section2" style="border:1px solid white; margin-top:30px; padding:20px;">
     <div class="container-fluid">
          <div class="row">
               <div class="col-md-12 col-sm-12">
                    <h2>Upcoming shows</h2>
               </div>
          </div>
     </div>
</section>

<section id="home-hero2" class="hero-section2" style="border:1px solid white; margin-top:30px; padding:20px;">
     <div class="container-fluid">
          <div class="row">
               <div class="col-md-12 col-sm-12">
                    <h2>Gig Calendar</h2>
               </div>
          </div>
     </div>
</section>

<section id="home-hero2" class="hero-section2" style="border:1px solid white; margin-top:30px; padding:20px;">
     <div class="container-fluid">
          <div class="row">
               <div class="col-md-12 col-sm-12">
                    <h2>Get in touch</h2>
               </div>
          </div>
     </div>
</section>