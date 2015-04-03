# @cjsx React.DOM
@Route = ReactRouter.Route
@DefaultRoute = ReactRouter.DefaultRoute
@RouterHandler = ReactRouter.RouteHandler
@Link = ReactRouter.Link

window.commentator_routes = 
  <Route handler={App}>
    <Route handler={CommentsContainer}>
      <Route name="show" path=":type" handler={CommentList} />
    </Route>
  </Route>

