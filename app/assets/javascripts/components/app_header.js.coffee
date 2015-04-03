# @cjsx React.DOM

@AppHeader = React.createClass
  render: ->
    <div className="user-header row">
      <div className="col-md-6">
        <img src= "http://placehold.it/200x50" />
      </div>
      <div className="col-md-6">
        <span className="pull-right">Hi dude</span>
      </div>
    </div>
