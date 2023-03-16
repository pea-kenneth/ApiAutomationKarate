# KarateAPIAutomation

--------------------------
Maven Parameterized command sample for "CreateUpdateDeleteUser" test

mvn clean test -Dkarate.options=classpath:API/FeatureFiles/ReqIN/CreateUpdateDeleteUser.feature -Dtest=ReqInRunner -Dkarate.env=req
--------------------------

GetListUsers test - Created assertion for one of the user in the list. Create var name place in config and match in the response, this will cover requirements Number 4 
----
GetSingleUser - Use param same implementation on getlisusers - create var in the confir and assert the user in the response
----
CreateUpdateDeleteUser - Created all 3 methods in one test to reuse the same id from creation
----
GetSingleUserNotFound - Nothing special just validate the 404 status response
----
Login - Implement the decoding of the user cred to support 5.b req
----
ReqInRunner - this is the runner
----
karate-config - This is where the var in place to make it reusable and easy to maintain, also i have env switching on this class as per req 5.a 
----



--------------------------
Notes:
I didnt cover all endpoints but at least i cover all applicable methods from get, get with param, post, put and delete.
other endpoints that i did not cover is just basically the same with what i cover, the important thing is  i make sure to  cover all the requirements listed.

