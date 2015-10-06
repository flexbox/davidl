#= require "trianglify/dist/trianglify.min"

$ ->

  randomColor = ->
    return 'hsl(187,' + (Math.floor(Math.random() * (100 - 40 + 1)) + 40) + '%' + ',50%)'

  pattern = Trianglify({
    height: window.innerHeight,
    width: window.innerWidth,
    cell_size: 30+Math.random()*50,
    color_function: randomColor
  })

  $('.js-hero-homepage').append(pattern.canvas())
