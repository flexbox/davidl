toggleSearch = (event) ->
  event.preventDefault()
  items = $('.js-topbar--list')
  items.find('a').toggleClass('is-minimized')
  items.find('form').toggleClass('is-expanded')

searchBar = ->
  $('#js-topbar--search').click (event) ->
    toggleSearch(event)
    $('.js-topbar--list').find('input[type="search"]').focus()

  $('#js-topbar--close').click (event) ->
    toggleSearch(event)

launchHeadroom = ->
  header = document.querySelector('#js-topbar')
  headroom = new Headroom(header,
    offset: 300
    tolerance: 10
    classes:
      initial: 'animated'
      pinned: 'headroom--pinned'
      unpinned: 'headroom--unpinned'
  )
  headroom.init()

$ ->
  launchHeadroom()
  searchBar()
