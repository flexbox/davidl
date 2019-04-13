toggleSearch = function(event) {
  var button, form, icon;
  event.preventDefault();
  form = $('#js-topbar--form form');
  icon = $('#js-topbar--form .l-action');
  button = $('#js-topbar--button');
  icon.toggleClass('is-hidden');
  button.toggleClass('is-hidden');
  return form.toggleClass('is-hidden', 'is-expanded');
};


export toggleNavigation = function() {
  var button;
  button = $('#js-topbar--button');
  return button.click(function(event) {
    event.preventDefault();
    return $('.js-topbar--list').toggleClass('is-on-viewport', 'is-away');
  });
};

export searchBar = function() {
  $('#js-topbar--search').click(function(event) {
    event.preventDefault();
    toggleSearch(event);
    return $('#js-search-input').focus();
  });
  return $('#js-topbar--close').click(function(event) {
    event.preventDefault();
    return toggleSearch(event);
  });
};

export launchHeadroom = function() {
  var header, headroom;
  header = document.getElementById('js-topbar');
  headroom = new Headroom(header, {
    offset: 300,
    tolerance: 10,
    classes: {
      initial: 'animated',
      pinned: 'headroom--pinned',
      unpinned: 'headroom--unpinned'
    }
  });
  return headroom.init();
};
