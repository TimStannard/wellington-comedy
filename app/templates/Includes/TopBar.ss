 <nav class="navbar navbar-expand-lg fixed-top custom-navbar">
     <a class="navbar-brand" href="#"></a>
   <!-- Collapse button -->
  <button class="navbar-toggler" id="nav-hamburger" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <div class="animated-icon"><span></span><span></span><span></span><span></span></div>
  </button>

  <div class="collapse justify-content-end navbar-collapse" id="navbarSupportedContent">
<ul class="nav navbar-nav" id="nav-links">
          <% loop $Menu(1) %>
          <li><a class="$LinkingMode" href="$Link" title="Go to the $Title page">$MenuTitle</a></li>
          <% end_loop %>
          <li><a href="https://github.com/TimStannard" class="fa fa-github"></a></li>
       </ul>
</div>
</nav>