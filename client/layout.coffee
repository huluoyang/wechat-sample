# Template.layout.events
#   'click #login': (event, template) ->
#     alert 'login011!'
#     Router.go('userAccounts', {_id: 1234});
#     return
#   # 'click #login': (event, template) ->
#   #   alert 'login021!'
#   #   return

# Template.layout.event
Template.layout.events
  'click #showProfileMenu':(event, t)->
    t.ActionSheetButtons = []
    # t.ActionSheetButtons = []
    # alert('1')
    if Meteor.user()?
      t.ActionSheetButtons.push {actionId:'addPost',text:'发帖 <i class="icon icon-ios-compose"></i>'}
      t.ActionSheetButtons.push {actionId:'logout',text:'注销 <i class="icon icon-log-out"></i>'}
    else
      t.ActionSheetButtons.push {actionId:'login',text:'登录 <i class="icon icon-log-in"></i>'}

    # alert('2')
    IonActionSheet.show
      titleText: 'titleText'
      buttons: t.ActionSheetButtons
      # cancelText:'取消'
      cancelText: 'cancel'
      cancel:->
          alert('canceled')
          return true
      buttonClicked:(index) ->
        switch t.ActionSheetButtons[index]?.actionId
          when 'addPost' then Router.go 'addPost'
          when 'logout'
              Meteor.logout ->
                  # toastr.success '已注销'
                  toastr.success 'Logged out'
                  # router.go 'lists'
                  Router.go 'lists'
          when 'login'
            Router.go 'userAccounts'
        return true
      distructiveButtonCLicked: ->
        console.log('Distructive Button clicked？')
        return true
