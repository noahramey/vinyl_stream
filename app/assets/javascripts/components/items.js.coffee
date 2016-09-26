@Items = React.createClass
  getInitialState: ->
    items: @props.data

  getDefaultProps: ->
    items: []

  addItem: (item) ->
    items = React.addons.update(@state.items, { $push: [item] })
    @setState items: items

  deleteItem: (item) ->
    index = @state.items.indexOf item
    items = React.addons.update(@state.items, { $splice: [[index, 1]] })
    @replaceState items: items

  render: ->
    React.DOM.div
      className: 'items'
      React.DOM.h2
        className: 'title'
        'Various Items'
      React.createElement ItemForm, handleNewItem: @addItem
      React.DOM.ul
        className: 'collection'
        for item in @state.items
          React.createElement Item, key: item.id, item: item, handleDeleteItem: @deleteItem
