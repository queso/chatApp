Meteor.startup ->
  Accounts.ui.config
    passwordSignupFields: 'EMAIL_ONLY'

  AccountsEntry.config
    homeRoute: '/'
    dashboardRoute: '/dashboard'
    language: 'en'
    showSignupCode: false
    extraSignUpFields: [
      {name: 'company', placeholder: 'Your company name', required: true}
    ]
