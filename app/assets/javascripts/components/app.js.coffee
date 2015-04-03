# @cjsx React.DOM
#
@App = React.createClass
  render: ->
    <div>
      <AppHeader />
      <RouterHandler url="comments.json" {...@props} />
    </div>
