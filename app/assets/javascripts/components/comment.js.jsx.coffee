converter = new Showdown.converter()
@Comment = React.createClass
  render: ->
    rawHtml = converter.makeHtml(@props.children.toString())
    React.DOM.div
      className: "comment",
        React.DOM.h3
          className: "commentAuthor",
            @props.author
        React.DOM.span
          dangerouslySetInnerHTML: 
            __html: rawHtml
