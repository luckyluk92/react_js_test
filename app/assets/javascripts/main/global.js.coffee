# @cjsx React.DOM
$ ->
  ReactRouter.run window.commentator_routes, (Handler, state)->
    React.render(
      <Handler params={state.params} />,
      document.getElementById('content')
    )
