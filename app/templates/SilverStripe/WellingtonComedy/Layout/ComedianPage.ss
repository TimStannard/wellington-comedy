<!-- Hero Section -->
<section id="comedian-holder-hero" class="hero-section">
    <div>$Breadcrumbs</div>
     <div class="container-fluid">
          <div class="row">
                    <div class="col-md-4 col-sm-4" style="border:1px solid white; padding:10px;">
                         <div>
                          $Photo.ScaleWidth(200)
                          </div>
                          <p>Comedian profile</p>
                         <h3>$Name</h3>
                         <p>$Blurb</p>
                         <hr>
                         $Profile
                         <hr>
                         Upcoming Shows:
                          <% loop $Events %>
                            $Title
                          <% end_loop %>
                    </div>
          </div>
     </div>
</section>