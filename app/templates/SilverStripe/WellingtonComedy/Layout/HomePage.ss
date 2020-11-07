<!-- Hero Section -->
<section id="home-hero" class="hero-section">
     <div class="container-fluid p-0">
          <div class="row no-gutters">
               <div class="col">
                     <!-- Slider main container -->
                    <div class="swiper-container todays-events-swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                         <!-- Slides -->
                         <% if $TodaysEvents %>
                              <% loop $TodaysEvents %>
                                   <div class="swiper-slide">
                                        <div class="hero-subheader wow fadeInDown"><i class="fas fa-caret-right"></i> WHAT’S ON TONIGHT</div>
                                        <a href="$Link"><h1 class="wow flipInX" data-wow-delay="0.3s">$Title</h1></a>
                                   </div>
                              <% end_loop %>
                         <% end_if %>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->
<%--                         <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div> --%>
                    </div>
               </div>
          </div>
     </div>
</section>