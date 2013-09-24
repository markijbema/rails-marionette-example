class EmptyView extends Backbone.Marionette.ItemView
  tagName: 'li'
  className: 'warning'
  template : templatify """
    Nothing went wrong. Ever!
  """

class IncidentView extends Backbone.Marionette.ItemView
  tagName: 'li'
  template : templatify """
    <a href="x/<%= id %>" rel="backbone">
      <%= title %>
    </a>
  """

  onRender: ->
    @$el.addClass @model.get('type')

class window.IncidentsView extends Backbone.Marionette.CompositeView
  template : templatify """
    <h1>A lot went wrong lately!</h1>

    <ul class="incidents"></ul>
  """
  itemViewContainer: '.incidents'
  itemView: IncidentView
  emptyView: EmptyView
