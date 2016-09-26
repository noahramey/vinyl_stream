@Account = React.createClass
  getInitialState: ->
    account: @props.data

  render: ->
    React.DOM.div
      className: 'account'
      React.DOM.div
        className: 'account-header'
        React.DOM.h2 null,
          @state.account.name
