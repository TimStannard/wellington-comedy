<!-- Hero Section -->
<section id="home-hero" class="hero-section" style="border:1px solid grey; font-size:1.5em;">
     <div class="container-fluid">
          <div class="row">
               <div class="col-md-12 col-sm-12">
                    <h2>What's on tonight</h2>
                    $Now
                    <% loop $TodaysEvents %>
                         <div>
                                   <% loop $DateTimes %>
                                   <%-- <span>$StartDate</span> --%>
                                   <%-- $StartTime.Format('h:mm a') --%>
                                   <% end_loop %>
                         <a href="$Link">$Title</a>
                         </div>
                    <% end_loop %>
               </div>
          </div>
     </div>
</section>