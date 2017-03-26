#= require "trianglify/dist/trianglify.min"

$ ->

  randomColor = ->
    return 'hsl(187,' + (Math.floor(Math.random() * (100 - 40 + 1)) + 40) + '%' + ',50%)'

  pattern = Trianglify({
    height: window.innerHeight,
    width: window.innerWidth,
    cell_size: 150 + Math.random() * 50,
    color_function: randomColor
  })

  $('.js-trianglify').append(pattern.canvas())
