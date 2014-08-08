Feature: To identify different devices and to avoid the need to
  copy security tokens around each device should be able to generate
  its own device ids.

  Scenario: A new user, with a new device wants to start using the protocol.
    Given a user Alice with no other devices
      And a device Alice-01 with no device id
     When Alice initiates id generation on Alice-01
     Then a new security token is generated on Alice-01

  Scenario: An existing user, with a new device wants to start using the
    protocol.
    Given a user Alice with one other device Alice-01 that conatains a device id
      And a device Alice-02 with no device id
     When Alice initiates id generation on Alice-02
     Then a new security token is generated on Alice-02
