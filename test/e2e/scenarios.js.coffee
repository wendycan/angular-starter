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

    it 'should diplay the current filter value within an element with id "status"', ->
      statusElement = element By.id 'status'

      expect(statusElement.getText()).toMatch /Current filter:\s*$/

      element(By.model('query')).sendKeys 'nexus'
      expect(statusElement.getText()).toMatch /Current filter: nexus\s*$/

      # expect(element(By.binding('query')).getText()).toMatch /Current filter: nexus\s*$/
