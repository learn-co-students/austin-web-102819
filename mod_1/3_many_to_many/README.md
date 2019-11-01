# Many to Many Relationships
We've learned how to create singular models, but it is time to take the next step and look at how to display relationships between models. 

## Objectives:

- Many to Many relationships.
- Practice keeping groups of data related to classes on the class as a class variable
- Demonstrate single source of truth by not storing collections of objects on other objects
- Demonstrate single source of truth by not storing one object in multiple collections


Starting relationship:
A Bank has many Accounts

Ending Relationship:

- A Bank has many Users
  * User belongs to a Bank (store Bank in User class)
- A User has many Accounts
  * Account belongs to User (store User in Account class)
- A Bank has many Accounts through Users
  * Account belongs to Bank (store bank in Account class)


  [Lecture Video](https://youtu.be/z1c_SMhFkxc)