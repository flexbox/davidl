$('body').prepend('<div class="m-video-background"></div>');

$('.m-video-background').videobackground({
  videoSource:
    [['/assets/video/device-design.mp4', 'video/mp4'],
    ['/assets/video/device-design.webm', 'video/webm']],
  controlPosition: '#main',
  poster: 'video/big-buck-bunny.jpg',
  loadedCallback: function() {
    $(this).videobackground('mute');
  }
});
