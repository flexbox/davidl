$ ->
  header = document.querySelector('#js-topbar')
  headroom = new Headroom(header,
    offset: 300
    tolerance: 10
    classes:
      initial: 'animated'
      pinned: 'slideDown'
      unpinned: 'slideUp'
  )
  headroom.init()
