<!-- Hero Section -->
<!-- Hero Section -->
<div id="comedian-profile-hero" class="hero">
     <h4>Comedian profile</h4>
    <h1 class="white">$Title</h1>   
</div>

<section id="comedian-profile-container">
    <%-- <div>$Breadcrumbs</div> --%>
     <div class="container-fluid">
          <div class="row">
                    <div class="col-md-4 col-sm-4">
                         <div class="comic-profile-img">
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