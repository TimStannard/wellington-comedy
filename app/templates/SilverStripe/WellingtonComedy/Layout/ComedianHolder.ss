<!-- Hero Section -->
<section id="comedians-holder-hero" class="hero-section" style="border:1px solid white; margin-top:30px; padding:20px;">
     <div class="container-fluid">
          <div class="row">
                    <% loop $ViewComics %>
                    <div class="col-md-4 col-sm-4" style="border:1px solid red; padding:20px;">
                         <div>
                              <% with $Photo.Fit(200,200) %>
                               <img class="comic-profile-image" src="$URL" alt="" />
                               <% end_with %></div>
                         <h3>$Name</h3>
                         <p>$Blurb</p>
                         <hr>
                         $Profile
                         <span class="button"><a href="#">Read more</a></span>
                    </div>
                    <% end_loop %>
          </div>
     </div>
</section>