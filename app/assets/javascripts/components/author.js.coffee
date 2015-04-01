@Author = React.createClass
  renderVip: ()->
    React.DOM.h3
        className: "commentAuthor",
        style: {color: "blue"},
          @props.name
  renderNormal: ->
    React.DOM.h3
        className: "commentAuthor",
          @props.name
  render: ->
    if @props.vip
      @renderVip()
    else
      @renderNormal()
