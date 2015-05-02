{View} = require 'atom-space-pen-views'
ContextVariableListView = require './context-variable-list-view'

module.exports =
class ContextView extends View

  @content: =>
    @div =>
      @span outlet: 'contextListView'

  initialize: (@context) ->
    @render()

  render: ->
    console.dir @context
    @contextListView.append(new ContextVariableListView( @context.name, null, @context.context.variables))
