@NewAccount = React.createClass
  getInitialState: ->
    account: @props.data
    buyer: false
    seller: false

  handleSeller: (e) ->
    e.preventDefault()
    @setState seller: !@state.seller

  handleBuyer: (e) ->
    e.preventDefault()
    @setState buyer: !@state.buyer

  handleSubmit: (e) ->
    e.preventDefault()
    data =
      name: this.refs.name.value
      about: this.refs.about.value
      address: this.refs.address.value
    $.ajax
      method: 'POST'
      url: '/accounts'
      dataType: 'JSON'
      data:
        account: data
      success: (data) =>
        @setState @getInitialState()

  sellerForm: ->
    React.DOM.form
      onSubmit: @handleSubmit
      React.DOM.input
        type: 'text'
        placeholder: 'Your name'
        name: 'name'
        ref: 'name'
      React.DOM.input
        type: 'text'
        placeholder: 'Tell me about yourself'
        name: 'about'
        ref: 'about'
      React.DOM.input
        type: 'text'
        placeholder: 'Your address'
        name: 'address'
        ref: 'address'
      React.DOM.button
        type: 'submit'
        className: 'btn'
        'Create Seller Account'


  render: ->
    if @state.seller
      @sellerForm()
    else
      React.DOM.div
        className: 'new-account'
        React.DOM.h2
          className: 'type-of-account'
          'Are you a buyer or seller?'
        React.DOM.a
          className: 'btn teal'
          onClick: @handleSeller
          'Seller'
        React.DOM.a
          className: 'btn green'
          onClick: @handleSeller
          'Buyer'
