<!-- Hero Section -->
<section id="comedians-holder-hero" class="hero-section" style="border:1px solid white; margin-top:30px; padding:20px;">
     <div class="container-fluid">
          <div class="row">
                    <% loop $Children %>
                    <div class="col-md-4 col-sm-4" style="">
                         <% if $Photo %>
                        <a href="$Link">
                              <% with $Photo.Fit(200,200) %>
                              <div>
                                   <img class="comic-profile-image" src="$URL" alt="" />
                              </div>
                         </a>
                              <% end_with %>
                         <% end_if %>

                    <a href="$Link">$Title</a>
                    </div>
                    <% end_loop %>
          </div>
     </div>
</section>