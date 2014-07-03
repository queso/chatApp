Template.addMessage.helpers
  formMessage: ->
    if Session.get('messageId')
      Message.first(Session.get('messageId'))
    else
      new Message

Template.addMessage.events
  'submit form': (event) ->
    event.preventDefault()
    data = SimpleForm.processForm(event.target)
    data.userId = Meteor.userId()
    if Session.get('messageId')
      message = Message.first(Session.get('messageId'))
      message.update(data)
    else
      message = Message.create(data)
    if message.id
      SimpleForm.resetForm(event.target)
      Session.set('messageId', undefined)
