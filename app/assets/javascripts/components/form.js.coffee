@Form = React.createClass
  render: ->
    css_classses = "simple-form"
    css_classses += " " + @props.className if @props.className
    React.DOM.form(
      className: css_classses
      onSubmit: @props.handleSubmit if @props.handleSubmit
      action: @props.form.action
      acceptCharset: "UTF-8",
        React.DOM.input
          type: "hidden"
          name: @props.form.csrf_param
          value: @props.form.csrf_token
        @props.children
    )

