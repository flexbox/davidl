$ ->
  header = document.querySelector('#js-header')
  headroom = new Headroom(header,
    offset: 205
    tolerance: 5
    classes:
      initial: 'animated'
      pinned: 'slideDown'
      unpinned: 'slideUp'
  )
  headroom.init()

  $('#js-off-canvas-toggle').click ->
    $("html,body").animate
      scrollTop: 0
    , 500

