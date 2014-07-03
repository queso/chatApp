class @Message extends Minimongoid
  @_collection: new Meteor.Collection 'messages'

  @belongs_to: [
    {name: 'user', identifier: 'userId', class_name: 'User'}
  ]
