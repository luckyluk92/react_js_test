# @cjsx React.DOM
@CommentsContainer = React.createClass
  setNewState: (data)->
    @setState
      comments: data.comments
      form: data.form

  loadCommentsFromServer: ->
    $.ajax
        url: @props.url
        success: (data)=>
          @setNewState(data)
        error: (xhr, status, err)=>
          console.error(@props.url, status, err.toString())
  handleSubmit: (comment, url)->
    data = {comments: @state.comments.concat([comment]), form: @state.form}
    @setNewState(data)
    $.ajax
      url: url
      data: {comment: comment}
      dataType: 'json'
      type: 'post'
      success: (data)=>
        @setNewState(data)
      error: (xhr, status, err)->
        console.error(url, status, err.toString())
  getInitialState: ->
    comments: []
    form:
      action: ''
      csrf_param: ''
      csrf_token: ''
  componentDidMount: ->
    @loadCommentsFromServer()
    #setInterval(@loadCommentsFromServer, @props.pollInterval)
  render: ->
    <div className="commentBox">
      <h1>Comments</h1>

      <div className="comments-collection">
        <div className="row comments-header">
          <div className="col-md-6">
            <span>
              There are {@state.comments.length} comments.
            </span>
          </div>
          <div className="col-md-6">
            <ul>
              <li><Link to="show" params={type: "list"}>List</Link></li>
              <li><Link to="show" params={type: "block"}>Block</Link></li>
            </ul>
          </div>
        </div>
        <RouterHandler {...@props} data={@state.comments}/>
      </div>

      <CommentForm
        form={@state.form}
        onCommentSubmit={@handleSubmit}
      />
    </div>
