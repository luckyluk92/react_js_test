# @cjsx React.DOM
@CommentsCollection = React.createClass
  getDefaultProps: ->
    data: []
    type: 'list'
  render: ->
    <div className="comments-collection">
      <div className="col-md-6">
        <span>
          There are {@props.data.length} comments.
        </span>
      </div>
      

      <CommentList data={@props.data} display={@props.type} />
    </div>
