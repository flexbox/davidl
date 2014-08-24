$ ->
  header = document.querySelector('#js-header')
  headroom = new Headroom(header,
    tolerance: 20
    offset: 500
    classes:
      initial: '_'
      pinned: 'is-show'
      unpinned: 'is-hidden'
  )
  headroom.init()

  $('#js-off-canvas-toggle').click ->
    $("html").animate
      scrollTop: 0
    , 500

