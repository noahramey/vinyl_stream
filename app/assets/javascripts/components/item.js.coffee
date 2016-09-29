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
    React.DOM.section null,
      React.DOM.div
        className: 'contact-method'
        React.DOM.span
          className: 'icon alt fa-envelope'
        React.DOM.h3 null, @props.item.name
        React.DOM.span null, @props.item.description
        React.DOM.br null
        React.DOM.span null, priceFormat(@props.item.price)
        React.DOM.br null
        React.DOM.span
          className: 'secondary-content'
          React.DOM.a
            className: 'btn red'
            onClick: @handleDelete
            React.DOM.i
              className: 'material-icons'
              'delete'
