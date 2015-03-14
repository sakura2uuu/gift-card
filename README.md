#README

This is a simple skeleton of a Gift Card application without the underlying implementations.

The specs are intentionally failing. It's up to you to make them pass :)

##Task

1. Create a User model with the following attributes

    - name (string)
    - email (string)
    - gender (string), either ‘Male’ or ‘Female’

2. Create a Giftcard model with the following attributes

    - title (string)
    - message (text)

3. Design a relation such that a user can have many gift cards, and each gift card belongs to one user.
All attributes in both models are required attributes (i.e cannot be null). Please name the models and attributes as per stated with the exact same casing.

4. Implement the stubbed methods in UsersController and GiftcardsController. For the simplicity of this task, we will omit edit and delete actions.
