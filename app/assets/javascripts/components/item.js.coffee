@Item = React.createClass
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/items/#{ @props.item.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteItem @props.item

  render: ->
    React.DOM.li
      className: 'collection-item avatar'
      React.DOM.i
        className: 'material-icons circle red'
        'play_arrow'
      React.DOM.span
        className: 'title'
        @props.item.name
      React.DOM.p null, @props.item.description
      React.DOM.p null, priceFormat(@props.item.price)
      React.DOM.p
        className: 'secondary-content'
        React.DOM.a
          className: 'btn red'
          onClick: @handleDelete
          React.DOM.i
            className: 'material-icons'
            'delete'
