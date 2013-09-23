class window.IncidentController extends Backbone.Marionette.Controller
  showIncidents: ->
    incidents = new Incidents
    incidents.fetch success: =>
      incidents_view = new IncidentsView collection: incidents
      StatusApp.mainRegion.show incidents_view

  showIncident: (id) ->
    incident = new Incident(id: id)
    incident.fetch success: ->
      incident_view = new IncidentDetailView model: incident
      StatusApp.mainRegion.show incident_view
