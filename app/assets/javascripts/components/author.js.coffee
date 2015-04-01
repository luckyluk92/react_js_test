@Author = React.createClass
  isVip: ->
    @props.name == "Łukasz"
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
    if @isVip()
      @renderVip()
    else
      @renderNormal()
