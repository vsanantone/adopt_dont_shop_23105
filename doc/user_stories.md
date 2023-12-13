# User Stories

## Deploy

```
[ ] done

0: Deploy your application to the internet

As a visitor of the site
I will perform all user stories
By visiting the application on the internet.
Localhost is fine for development, but
the application must be hosted on the internet.

As a team, choose either Render or Heroku to deploy your project.
Use these guides: 

Heroku: https://devcenter.heroku.com/articles/getting-started-with-rails7
Render: https://backend.turing.edu/module2/misc/deploying_with_render

Continuous Integration / Deployment is not allowed for this project.
```

## Apply for Pet(s)

Visitors to the site will be able to create applications to adopt pets. An application has many pets. Pets can have many applications.

```
[ ] done

1. Application Show Page

As a visitor
When I visit an applications show page
Then I can see the following:
- Name of the Applicant
- Full Address of the Applicant including street address, city, state, and zip code
- Description of why the applicant says they'd be a good home for this pet(s)
- names of all pets that this application is for (all names of pets should be links to their show page)
- The Application's status, either "In Progress", "Pending", "Accepted", or "Rejected"
```

```
[ ] done

2. Starting an Application

As a visitor
When I visit the pet index page
Then I see a link to "Start an Application"
When I click this link
Then I am taken to the new application page where I see a form
When I fill in this form with my:
  - Name
  - Street Address
  - City
  - State
  - Zip Code
  - Description of why I would make a good home
And I click submit
Then I am taken to the new application's show page
And I see my Name, address information, and description of why I would make a good home
And I see an indicator that this application is "In Progress"
```

```
[ ] done

3. Starting an Application, Form not Completed

As a visitor
When I visit the new application page
And I fail to fill in any of the form fields
And I click submit
Then I am taken back to the new applications page
And I see a message that I must fill in those fields.
```

```
[ ] done

4. Searching for Pets for an Application

As a visitor
When I visit an application's show page
And that application has not been submitted,
Then I see a section on the page to "Add a Pet to this Application"
In that section I see an input where I can search for Pets by name
When I fill in this field with a Pet's name
And I click submit,
Then I am taken back to the application show page
And under the search bar I see any Pet whose name matches my search
```

```
[ ] done

5. Add a Pet to an Application

As a visitor
When I visit an application's show page
And I search for a Pet by name
And I see the names Pets that match my search
Then next to each Pet's name I see a button to "Adopt this Pet"
When I click one of these buttons
Then I am taken back to the application show page
And I see the Pet I want to adopt listed on this application
```

```
[ ] done

6. Submit an Application

As a visitor
When I visit an application's show page
And I have added one or more pets to the application
Then I see a section to submit my application
And in that section I see an input to enter why I would make a good owner for these pet(s)
When I fill in that input
And I click a button to submit this application
Then I am taken back to the application's show page
And I see an indicator that the application is "Pending"
And I see all the pets that I want to adopt
And I do not see a section to add more pets to this application
```

```
[ ] done

7. No Pets on an Application

As a visitor
When I visit an application's show page
And I have not added any pets to the application
Then I do not see a section to submit my application
```

## Database Logic Part 1

These stories emphasize key database concepts.

```
[ ] done

8. Partial Matches for Pet Names

As a visitor
When I visit an application show page
And I search for Pets by name
Then I see any pet whose name PARTIALLY matches my search
For example, if I search for "fluff", my search would match pets with names "fluffy", "fluff", and "mr. fluff"
```

```
[ ] done

9. Case Insensitive Matches for Pet Names

As a visitor
When I visit an application show page
And I search for Pets by name
Then my search is case insensitive
For example, if I search for "fluff", my search would match pets with names "Fluffy", "FLUFF", and "Mr. FlUfF"
```

```
[ ] done

SQL Only Story

For this story, you should write your queries in raw sql. You can use the ActiveRecord find_by_sql method to execute raw sql queries: https://guides.rubyonrails.org/active_record_querying.html#finding-by-sql

10. Admin Shelters Index

As a visitor
When I visit the admin shelter index ('/admin/shelters')
Then I see all Shelters in the system listed in reverse alphabetical order by name
```

```
[ ] done

For this story, you should fully leverage ActiveRecord methods in your query.

11. Shelters with Pending Applications

As a visitor
When I visit the admin shelter index ('/admin/shelters')
Then I see a section for "Shelters with Pending Applications"
And in this section I see the name of every shelter that has a pending application
```

## Approving Applications

Pets on an application can either be accepted or rejected.

For this set of stories, we will be making routes that begin with '/admin'. This is to indicate that only a user with special privileges should be able to accept or reject pets on an application. Normally, we would want to make sure that a user is logged into an admin account before being able complete any of this workflow, but we will not add any log in or authorization functionality to this project.

```
[ ] done

12. Approving a Pet for Adoption

As a visitor
When I visit an admin application show page ('/admin/applications/:id')
For every pet that the application is for, I see a button to approve the application for that specific pet
When I click that button
Then I'm taken back to the admin application show page
And next to the pet that I approved, I do not see a button to approve this pet
And instead I see an indicator next to the pet that they have been approved
```

```
[ ] done

13. Rejecting a Pet for Adoption

As a visitor
When I visit an admin application show page ('/admin/applications/:id')
For every pet that the application is for, I see a button to reject the application for that specific pet
When I click that button
Then I'm taken back to the admin application show page
And next to the pet that I rejected, I do not see a button to approve or reject this pet
And instead I see an indicator next to the pet that they have been rejected
```

```
[ ] done

14. Approved/Rejected Pets on one Application do not affect other Applications

As a visitor
When there are two applications in the system for the same pet
When I visit the admin application show page for one of the applications
And I approve or reject the pet for that application
When I visit the other application's admin show page
Then I do not see that the pet has been accepted or rejected for that application
And instead I see buttons to approve or reject the pet for this specific application
```

---
## Extensions

_Note: It is recommended that these extensions only be attempted after ALL user stories above are 100% completed, and your project is satisfactorily refactored._ 

## Completed Applications

Once all pets on an application have been marked either accepted or rejected, then the application is no longer "Pending". If all the pets were accepted, then the application is "Accepted". If one or more pets on the application is rejected, then the entire application is "Rejected".

```
[ ] done

15. All Pets Accepted on an Application

As a visitor
When I visit an admin application show page
And I approve all pets for an application
Then I am taken back to the admin application show page
And I see the application's status has changed to "Approved"
```

```
[ ] done

16. One or More Pets Rejected on an Application

As a visitor
When I visit an admin application show page
And I reject one or more pets for the application
And I approve all other pets on the application
Then I am taken back to the admin application show page
And I see the application's status has changed to "Rejected"
```

```
[ ] done

17. Application Approval makes Pets not adoptable

As a visitor
When I visit an admin application show page
And I approve all pets on the application
And when I visit the show pages for those pets
Then I see that those pets are no longer "adoptable"
```

```
[ ] done

18. Pets can only have one approved application on them at any time

As a visitor
When a pet has an "Approved" application on them
And when the pet has a "Pending" application on them
And I visit the admin application show page for the pending application
Then next to the pet I do not see a button to approve them
And instead I see a message that this pet has been approved for adoption
And I do see a button to reject them
```

## Database Logic Part 2

These stories emphasize SQL and ActiveRecord concepts.

```
[ ] done

SQL Only Story

For this story, you should write your queries in raw sql. You can use the ActiveRecord find_by_sql method to execute raw sql queries: https://guides.rubyonrails.org/active_record_querying.html#finding-by-sql

19. Admin Shelters Show Page

As a visitor
When I visit an admin shelter show page
Then I see that shelter's name and full address

NOTE: Your query should only return the necessary data to complete the story
```

### ActiveRecord

For the following stories, you should fully leverage ActiveRecord methods in your queries.

```
[ ] done

20. Shelters with Pending Applications Listed Alphabetically

As a visitor
When I visit the admin shelter index ('/admin/shelters')
And I look in the section for shelters with pending applications
Then I see all those shelters are listed alphabetically
```

```
[ ] done

21. Admin Shelters Show Page Links

As a visitor
When I visit the admin shelter index ('/admin/shelters')
Then I see that every shelter name is a link
When I click one of these links
Then I am taken to that shelter's admin show page
```

```
[ ] done

22. Average Pet Age

As a visitor
When I visit an admin shelter show page
Then I see a section for statistics
And in that section I see the average age of all adoptable pets for that shelter
```

```
[ ] done

23. Count of Adoptable Pets

As a visitor
When I visit an admin shelter show page
Then I see a section for statistics
And in that section I see the number of pets at that shelter that are adoptable
```

```
[ ] done

24. Count of Pets that have been Adopted

As a visitor
When I visit an admin shelter show page
Then I see a section for statistics
And in that section I see the number of pets that have been adopted from that shelter

Note: A Pet has been adopted from a shelter if they are part of an approved application
```

```
[ ] done

25. Action Required

As a visitor
When I visit an admin shelter show page
Then I see a section titled "Action Required"
In that section, I see a list of all pets for this shelter that have a pending application and have not yet been marked "approved" or "rejected"
```

```
[ ] done

26. Action Required Links to Application Show Page

As a visitor
When I visit an admin shelter show page
And I look in the "Action Required" section
Then next to each pet's name I see a link to the admin application show page where I can accept or reject the pet.
```

---

## More Extensions


### ActiveRecord Extensions

1. Refactor your code to make use of [ActiveRecord callbacks](https://guides.rubyonrails.org/active_record_callbacks.html)
1. Refactor your code to make use of [ActiveRecord Scopes](https://guides.rubyonrails.org/active_record_querying.html#scopes)

### Styling

Implement a CSS Grid Framework to improve your styling, either [CSS Grid Layout](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout), [Bootstrap](https://getbootstrap.com/), or [Tailwind](https://tailwindcss.com/).

