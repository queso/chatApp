( ()->
  describe "Template.dashboard", ->
    it "should return messages sorted by their createdAt date descending", ->
      messages = {}
      Message.where = (selector, options) ->
        expect(options.sort.createdAt).toBe -1
        messages

      expect(Template.dashboard.messages()).toBe messages
)()
