@CommentList = React.createClass
  renderCommentNodes: ->
    @props.data.map (comment)->
      React.createElement Comment,
        author: comment.user,
          comment.content
  render: ->
    React.DOM.div
      className: "commentList",
        @renderCommentNodes()
