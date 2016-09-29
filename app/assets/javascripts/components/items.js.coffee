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
      className: 'items inner'
      React.DOM.header
        className: 'major'
        React.DOM.h2 null,
          'Shop'
      React.DOM.div
        className: 'content'
        React.DOM.section null
          for item in @state.items
            React.createElement Item, key: item.id, item: item, handleDeleteItem: @deleteItem
        React.DOM.hr null
        React.createElement ItemForm, handleNewItem: @addItem
