$ ->
  header = document.querySelector('.m-header')
  headroom = new Headroom(header,
    tolerance: 5
    offset: 50
    classes:
      initial: '_'
      pinned: 'is-show'
      unpinned: 'is-hidden'
  )
  headroom.init()



  $('#js-off-canvas-toggle').click ->
    $("html,body").animate
      scrollTop: 0
    , 500

