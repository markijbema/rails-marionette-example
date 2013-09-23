tryOpenLinkWithBackbone = (routeTo) ->
  oldFragment = Backbone.history.fragment
  Backbone.history.navigate routeTo, false
  unless Backbone.history.loadUrl(routeTo)
    Backbone.history.navigate oldFragment, false
    window.open routeTo
    window.focus()

$(document).on "click", "a", (e)->
  routeTo = $(e.target).closest("a").attr("href")
  if e.metaKey or e.ctrlKey or e.altKey
    window.open routeTo, "_blank"
  else
    tryOpenLinkWithBackbone routeTo
  e.preventDefault()
  false
