@CommentBox = React.createClass(
  getInitialState: ->
    return {data: []}
  componentDidMount: ->
    $.ajax
      url: @props.url
      success: (data)=>
        @setState({data: data})
  render: ->
    return (
      `<div className="commentBox">
        <h1>Comments</h1>
        <CommentList data={this.state.data}/>
        <CommentForm />
      </div>`
    )
)

