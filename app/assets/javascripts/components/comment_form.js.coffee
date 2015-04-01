@CommentForm = React.createClass
  handleSubmit: (e)->
    e.preventDefault()
    comment = {
      user: React.findDOMNode(@refs.user).value.trim()
      content: React.findDOMNode(@refs.content).value.trim()
    }
    return if !comment.user? || !comment.content?

    @props.onCommentSubmit(comment, @props.form.action)
    #I think jQuery would looks much better...
    React.findDOMNode(@refs.user).value = ''
    React.findDOMNode(@refs.content).value = ''

  render: ->
    React.createElement Form,
      className: "comment-form"
      form: @props.form
      handleSubmit: @handleSubmit,
        React.DOM.input
          key: 1
          type: "text"
          placeholder: "Name"
          ref: "user"
          name: "comment[user]"
        React.DOM.input
          key: 2
          type: "text"
          placeholder: "Say..."
          ref: "content"
          name: "comment[content]"
        React.DOM.input
          key: 3
          type: "submit"
          value: "Post"
