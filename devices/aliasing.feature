Feature: To identify multiple devices with one user, users should be able to
  alias their devices.

  Scenario: A user with two devices wants to alias them.
     Given a user Alice
       And an online device Alice-01
       And an online device Alice-02
      When Alice initiates aliasing between Alice-01 and Alice-02
      Then TODO

  Scenario: A user with two aliased devices that are both online recieves a
    message from another user.
     Given a user Alice
       And an online device Alice-01
       And an online device Alice-02
       And an alias between Alice-01 and Alice-02
       And a user Bob
       And an online device Bob-01
      When Bob sends a message from Bob-01 to Alice
      Then Alice-01 recieves the message
       And Alice-02 recieves the message

  Scenario: A user with two aliased devices where only one of them is online
    recieves a message from another user.
     Given a user Alice
       And an online device Alice-01
       And an offline device Alice-02
       And an alias between Alice-01 and Alice-02
       And a user Bob
       And an online device Bob-01
      When Bob sends a message from Bob-01 to Alice
      Then Alice-01 recieves the message
