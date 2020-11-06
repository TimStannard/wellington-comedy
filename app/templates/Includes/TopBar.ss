 <nav class="navbar navbar-expand-lg fixed-top custom-navbar">
     <a id="navbar-brand" href="$AbsoluteBaseURL"><img src="img/beehive-logo.jpg" alt="the wellington beehive"></a>
   <!-- Collapse button -->
  <button class="navbar-toggler" id="nav-hamburger" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <div class="animated-icon"><span></span><span></span><span></span><span></span></div>
  </button>
  <%--  Page links --%>
  <div class="collapse justify-content-end navbar-collapse" id="navbarSupportedContent">
      <ul class="nav navbar-nav" id="nav-links">
          <% loop $Menu(1) %>
          <li><a class="$LinkingMode" href="$Link" title="Go to the $Title page">$MenuTitle</a></li>
          <% end_loop %>
       </ul>
</div>
</nav>