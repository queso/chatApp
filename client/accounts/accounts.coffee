Meteor.startup ->
  Accounts.ui.config
    passwordSignupFields: 'EMAIL_ONLY'
    requestPermissions: {
      facebook: ['public_profile', 'user_friends', 'user_work_history']
    }

  AccountsEntry.config
    homeRoute: '/'
    dashboardRoute: '/dashboard'
    language: 'en'
    showSignupCode: false
    extraSignUpFields: [
      {name: 'company', placeholder: 'Your company name', required: true}
    ]
