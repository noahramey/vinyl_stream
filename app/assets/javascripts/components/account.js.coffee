@Account = React.createClass
  getInitialState: ->
    account: @props.data

  render: ->
    React.DOM.div
      className: 'account'
      React.DOM.div
        className: 'account-header'
        React.DOM.h3 null,
          @state.account.name
        React.DOM.p null,
          @state.account.about
      React.DOM.div
        className: 'account-body'
        React.DOM.p null,
          'Image support coming soon...'
