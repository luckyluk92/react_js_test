@CommentForm = React.createClass
  handleSubmit: (e)->
    e.preventDefault()
    comment = {
      user: React.findDOMNode(@refs.user).value.trim()
      content: React.findDOMNode(@refs.content).value.trim()
      vip: React.findDOMNode(@refs.vip).checked
    }
    return if !comment.user? || !comment.content?

    @props.onCommentSubmit(comment, @props.form.action)
    #I think jQuery would looks much better...
    React.findDOMNode(@refs.user).value = ''
    React.findDOMNode(@refs.content).value = ''
    React.findDOMNode(@refs.vip).checked = false

  render: ->
    React.createElement Form,
      className: "comment-form"
      form: @props.form
      handleSubmit: @handleSubmit,
        React.DOM.input
          type: "text"
          placeholder: "Name"
          ref: "user"
          name: "comment[user]"
        React.DOM.input
          type: "text"
          placeholder: "Say..."
          ref: "content"
          name: "comment[content]"
        React.DOM.input
          type: "checkbox"
          ref: "vip"
          name: "comment[vip]",
            "Are you a VIP?"
        React.DOM.br(null)
        React.DOM.input
          type: "submit"
          value: "Post"
