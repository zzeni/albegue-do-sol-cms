$(document).ready ->
  $('#gallery_slides').slides(
    preload: true,
    preloadImage: '/assets/slides/loading.gif',
    play: 10000,
    pause: 20000,
    hoverPause: true,
    animationStart: (current) ->
      $('.caption').animate(
        bottom:-35
      ,100)
    animationComplete: (current) ->
      $('.caption').animate(
        bottom:0
      ,200)
    slidesLoaded: ->
      $('.caption').animate(
        bottom:0
      ,200)
  )
