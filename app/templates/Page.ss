<!DOCTYPE html>
<html lang="en">
<head>
     <% base_tag %>
     $MetaTags
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;500;700&display=swap" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;500;600;900&display=swap" rel="stylesheet">
     <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
     <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
     <% include TopBar %>
     $Layout
     <% include Footer %> 
     <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script> 
      <script src="https://kit.fontawesome.com/b0f16cc58c.js" crossorigin="anonymous"></script>
</body>
</html>