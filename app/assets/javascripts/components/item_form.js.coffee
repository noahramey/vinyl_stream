@ItemForm = React.createClass
  getInitialState: ->
    name: ''
    description: ''
    category: ''
    price: ''

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value

  handleSubmit: (e) ->
    e.preventDefault()
    $.post '/items', { item: @state }, (data) =>
      @props.handleNewItem data
      @setState @getInitialState()
    , 'JSON'

  valid: ->
    @state.name && @state.description && @state.category && @state.price

  render: ->
    React.DOM.form
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'field'
        React.DOM.label
          htmlFor: 'name'
          'Name'
        React.DOM.input
          type: 'text'
          placeholder: 'Name'
          name: 'name'
          value: @state.name
          onChange: @handleChange
      React.DOM.div
        className: 'field'
        React.DOM.label
          htmlFor: 'description'
          'Description'
        React.DOM.input
          type: 'text'
          placeholder: 'Description'
          name: 'description'
          value: @state.description
          onChange: @handleChange
      React.DOM.div
        className: 'field'
        React.DOM.label
          htmlFor: 'category'
          'Category'
        React.DOM.input
          type: 'text'
          placeholder: 'Category'
          name: 'category'
          value: @state.category
          onChange: @handleChange
      React.DOM.div
        className: 'field'
        React.DOM.label
          htmlFor: 'price'
          'Price'
        React.DOM.input
          type: 'number'
          placeholder: 'Price'
          name: 'price'
          value: @state.price
          onChange: @handleChange
      React.DOM.div
        className: 'actions'
        React.DOM.button
          type: 'submit'
          className: 'btn'
          disabled: !@valid()
          'Add Item Listing'
