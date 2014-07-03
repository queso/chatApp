class @Company extends Minimongoid
  @_collection: new Meteor.Collection 'company'

  @belongs_to: [
    {name: 'adminUser', identifier: 'adminUserId', class_name: 'User'}
  ]

  @has_and_belongs_to_many: [
    {name: 'companyUsers', class_name: 'User'}
  ]
