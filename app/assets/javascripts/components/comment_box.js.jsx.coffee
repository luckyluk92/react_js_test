@CommentBox = React.createClass
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
    React.DOM.div 
      className: "commentBox",
        React.DOM.h1(null, "Comments")
        React.createElement CommentList,
          data: @state.comments
        React.createElement CommentForm,
          form: @state.form
          onCommentSubmit: @handleSubmit
