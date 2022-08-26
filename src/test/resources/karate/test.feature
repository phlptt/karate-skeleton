Feature: Integration test using Karate

  Background:
    * configure ssl = { trustAll: true }

  @get_200
  Scenario: Get Request - happy path
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method GET
    Then status 200
    And match response == {"userId":1,"id":1,"title":"sunt aut facere repellat provident occaecati excepturi optio reprehenderit","body":"quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"}


  @post_200
  Scenario: Post Request - happy path
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method POST
    When request {title: 'foo', body: 'bar', userId: 1 }
    Then status 201
    And match response == {"id":101}