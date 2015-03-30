@CommentList = React.createClass(
  render: ->
    commentsNodes = @props.data.map (comment)->
      return(
        `<Comment author={comment.author}>
          {comment.text}
        </Comment>`
      )
    return(
      `<div className="commentList">
        {commentsNodes}
      </div>`
    )
)
