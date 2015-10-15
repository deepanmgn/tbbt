---
---

Episode =
  select: (ele) ->
    $('#episodes aside a.active').removeClass('active')
    $(@).addClass('active')
    $('#episodes article').addClass('hidden')
    $(@.dataset.target).removeClass('hidden')

$ ->
  $('#episodes aside a').click (ev) ->
    ev.preventDefault()
    Episode.select(this)

Episode.select($('#episodes aside a')[0])
