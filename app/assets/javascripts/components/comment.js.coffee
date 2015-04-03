# @cjsx React.DOM
#
converter = new Showdown.converter()
@Comment = React.createClass
  renderSingle: (classes)->
    rawHtml = converter.makeHtml(@props.children.toString())
    <div className={classes}>
      <Author name={@props.author} vip={@props.vip} />
      <span dangerouslySetInnerHTML={{__html: rawHtml}} />
    </div>

  render: ->
    classes = classNames
      "comment": true
      "col-md-3": @props.display == 'block'
    @renderSingle(classes)
