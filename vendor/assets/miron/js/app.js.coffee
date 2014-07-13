#====main navigation hover dropdown====

$(document).on "page:change", ->
  $(".js-activated").dropdownHover(
    instantlyCloseOthers: false
    delay: 0
  ).dropdown()
  return

#====flex main slider====
$(document).on "page:change", ->
    $(".slider-main,.testimonials").flexslider
      slideshowSpeed: 5500
      directionNav: false
      animation: "fade"

#========portfolio mix====
$(document).on "page:change", ->
    $("#grid").mixitup()

#========tooltip and popovers====
$(document).on "page:change", ->
    $("[data-toggle=popover]").popover()
    $("[data-toggle=tooltip]").tooltip()

#========flex-gallery slide====
$(document).on "page:change", ->
  $(".flexslider").flexslider
    directionNav: false
    slideshowSpeed: 6000
    animation: "fade"

  return
