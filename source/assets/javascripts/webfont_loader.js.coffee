class Webfont
  loadFromCdn: =>
    WebFont.load google:
      families: [
        "Droid Serif:n4,b7"
        "Lato:ub9"
      ]

WebfontLoader = new Webfont
WebfontLoader.loadFromCdn()
