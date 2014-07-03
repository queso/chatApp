Template.dashboard.helpers
  messages: ->
    Message.where({}, {sort: {createdAt: -1}})

  userEmail: ->
    if @user()
      @user().firstEmail().address

  messageOwner: ->
    @user().id is Meteor.userId()

Template.dashboard.events
  'click .edit': (event) ->
    event.preventDefault()
    Session.set('messageId', @id)

  'click .delete': (event) ->
    event.preventDefault()
    if confirm('Are you sure?')
      message = Message.first(@id)
      message.destroy()
