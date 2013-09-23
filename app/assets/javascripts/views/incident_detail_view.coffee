class window.IncidentDetailTitleView extends Backbone.Marionette.ItemView
  template : templatify """
    <h1><%= title %></h1>
  """

class window.IncidentDetailDescriptionView extends Backbone.Marionette.ItemView
  template : templatify """
    <p><%= description %></p>
  """

class window.IncidentDetailView extends Backbone.Marionette.Layout
  template : templatify """
    <div class="title-container"></div>
    <div class="description-container"></div>
  """

  regions:
    titleRegion: '.title-container'
    descriptionRegion: '.description-container'

  onRender: ->
    title_view = new IncidentDetailTitleView
      model: @model
    @titleRegion.show title_view

    description_view = new IncidentDetailDescriptionView
      model: @model
    @descriptionRegion.show description_view
