converter = new Showdown.converter()
@Comment = React.createClass
  render: ->
    rawHtml = converter.makeHtml(@props.children.toString())
    React.DOM.div
      className: "comment",
        React.createElement Author,
          name: @props.author
          vip: @props.vip
        React.DOM.span
          dangerouslySetInnerHTML: 
            __html: rawHtml
