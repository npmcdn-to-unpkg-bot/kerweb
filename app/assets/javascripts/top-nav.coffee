$(document).scroll ->
  y = $(this).scrollTop()
  if y > ($(window).height()-70)
    $('#top-menu').show().removeClass('fadeOutUp').addClass('fadeInDown')
  else
    $('#top-menu').removeClass('fadeInDown').addClass('fadeOutUp')
  return