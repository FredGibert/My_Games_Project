const loadCarousel = () => {
  const carouselItemsCount = document.querySelectorAll('.carousel .carousel-item-regular').length;

  if (carouselItemsCount > 3) {
    console.log("test")
    $('#recipeCarousel').carousel({
      interval: 10000,
      wrap: true
    })


    $('.carousel .carousel-item').each(function(){
        var minPerSlide = 3;
        var next = $(this).next();
        if (!next.length) {
        next = $(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo($(this));

        for (var i=0;i<minPerSlide;i++) {
            next=next.next();
            if (!next.length) {
              next = $(this).siblings(':first');
            }

            next.children(':first-child').clone().appendTo($(this));
          }
    });
  }
}

export { loadCarousel };
