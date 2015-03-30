converter = new Showdown.converter()
@Comment = React.createClass(
  render: ->
    rawHtml = converter.makeHtml(@props.children.toString())
    return(
      `<div className="comment">
        <h3 className="commentAuthor">
          {this.props.author}
        </h3>
        <span dangerouslySetInnerHTML={{__html: rawHtml}} />
      </div>`
    )
)
