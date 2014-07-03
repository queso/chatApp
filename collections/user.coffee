class @User extends Minimongoid

  @_collection: Meteor.users

  @has_many: [
    {name: 'messages', foreign_key: 'userId', class_name: 'Message'}
  ]

  @current: ->
    if Meteor.userId()
      User.init Meteor.user()

  firstEmail: ()->
    if Meteor.userId()
      Meteor.user()?.emails?[0]


