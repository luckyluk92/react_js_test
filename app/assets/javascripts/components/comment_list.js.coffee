@CommentList = React.createClass
  renderCommentNodes: ->
    @props.data.map (comment)->
      React.createElement Comment,
        vip: comment.vip
        author: comment.user,
          comment.content
  render: ->
    React.DOM.div
      className: "commentList",
        @renderCommentNodes()
