Sample app to reproduce issue #77 of nested_form.

* clone that repo
* run `bundle install`
* run `rake db:migrate` (app uses sqlite)
* run `rake db:seed` (adding some sample data)
* run `rails server` and go to http://localhost:3000/users/new
* now try to add a user that likes to *Biking* in the *Mountains* **and** in the *City*
* when you edit that user again you will notice that either *Mountain* of *City* got lost
* now do `mv nested_form_fix.js app/assets/javascripts/nested_form.js` (pulled in #186) and test again - this time it should work
