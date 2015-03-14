toggleNavigation = ->
  button = $('#js-topbar--button')
  button.click (event) ->
    event.preventDefault()
    $('.js-topbar--list').toggleClass('is-on-viewport','is-away')

toggleSearch = (event) ->
  event.preventDefault()
  form = $('#js-topbar--form form')
  icon = $('#js-topbar--form .l-action')
  button = $('#js-topbar--button')

  icon.toggleClass('is-hidden')
  button.toggleClass('is-hidden')
  form.toggleClass('is-expanded')

searchBar = ->
  $('#js-topbar--search').click (event) ->
    event.preventDefault()
    toggleSearch(event)
    $('#js-search-input').focus()

  $('#js-topbar--close').click (event) ->
    event.preventDefault()
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
  toggleNavigation()
