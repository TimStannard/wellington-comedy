<!-- Hero Section -->
<section id="comedians-holder-hero" class="hero-section" style="border:1px solid white; margin-top:30px; padding:20px;">
     <div class="container-fluid">
          <div class="row">
                    <% loop $ViewComics %>
                    <div class="col-md-4 col-sm-4" style="border:1px solid red; padding:20px;">
                         <h3>$Name</h3>
                         <span class="button"><a href="#">Read more</a></span>
                    </div>
                    <% end_loop %>
          </div>
     </div>
</section>