describe 'Phone App', ->
  describe 'Phone list view', ->
    beforeEach ->
      browser.get '/'
    it 'should filter the phone list as user types into search box', ->
      phoneList = element.all(By.repeater('phone in phones'))
      query = element By.model('query')

      expect(phoneList.count()).toBe(2)

      query.sendKeys 'nexus'
      expect(phoneList.count()).toBe(1)
