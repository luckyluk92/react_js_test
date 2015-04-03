# @cjsx React.DOM
#
@CommentList = React.createClass
  renderCommentNodes: ->
    @props.data.map (comment)=>
      <Comment
        display={if @props.params.type? then @props.params.type else "list"}
        vip={comment.vip}
        author={comment.user}
      >
        {comment.content}
      </Comment>
  render: ->
    <div className="commentList">
      <div className="row">
        {@renderCommentNodes()}
      </div> 
    </div>
    
