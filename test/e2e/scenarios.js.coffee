describe 'Phone App', ->
  describe 'Phone list view', ->

    beforeEach ->
      browser.get '/'

    it 'should filter the phone list as user types into search box', ->
      phoneList = element.all(By.repeater('phone in phones'))
      query = element By.model('query')

      expect(phoneList.count()).toBe(3)

      query.sendKeys 'nexus'
      expect(phoneList.count()).toBe(1)

    it 'should diplay the current filter value within an element with id "status"', ->
      statusElement = element By.id 'status'

      expect(statusElement.getText()).toMatch /Current filter:\s*$/

      element(By.model('query')).sendKeys 'nexus'
      expect(statusElement.getText()).toMatch /Current filter: nexus\s*$/

      # expect(element(By.binding('query')).getText()).toMatch /Current filter: nexus\s*$/

    it 'should bo possible to control phone order via the drop down select box', ->
      phoneNameColumn = element.all By.repeater('phone in phones').column('{{phone.name}}')
      query = element By.model('query')
      getNames = ->
        phoneNameColumn.map (elm)->
          elm.getText()

      query.sendKeys 'tablet'
      expect(getNames()).toEqual([
        "Motorola with wi-fi",
        "MOTOROla"
      ])

      element(By.model('orderProp')).findElement(By.css('option[value="name"]')).click()
      expect(getNames()).toEqual([
        "MOTOROla",
        "Motorola with wi-fi"
      ])
