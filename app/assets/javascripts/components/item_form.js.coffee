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
    $.post '', { item: @state }, (data) =>
      @props.handleNewItem data
      @setState @getInitialState()
    , 'JSON'

  valid: ->
    @state.name && @state.description && @state.category && @state.price

  render: ->
    React.DOM.form
      onSubmit: @handleSubmit
      React.DOM.input
        type: 'text'
        placeholder: 'Name'
        name: 'name'
        value: @state.name
        onChange: @handleChange
      React.DOM.input
        type: 'text'
        placeholder: 'Description'
        name: 'description'
        value: @state.description
        onChange: @handleChange
      React.DOM.input
        type: 'text'
        placeholder: 'Category'
        name: 'category'
        value: @state.category
        onChange: @handleChange
      React.DOM.button
        type: 'submit'
        className: 'btn'
        disabled: !@valid()
        'Add Item Listing'
