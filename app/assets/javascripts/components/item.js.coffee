@Item = React.createClass
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
        React.DOM.i
          className: 'material-icons'
          'grade'
