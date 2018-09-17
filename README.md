# Query Code Coverage
In Salesforce Orgs, code coverage percentage is a calculation of the number of covered lines divided by the sum of the number of covered lines and uncovered lines.  In addition to ensuring the quality of your code, unit tests enable you to meet the code coverage requirements for deploying or packaging Apex. 

To deploy Apex or package it for the Salesforce AppExchange, unit tests must cover at least 75% of your Apex code, and those tests must pass.  After running tests, you can view code coverage information in the Tests tab of the Developer Console. The code coverage pane includes coverage information for each Apex class and the overall coverage for all Apex code in your organization.  However, you can also use SOQL queries with Tooling API as an alternative way of checking code coverage and a quick way to get more details. 

The code in this repository show how it works.
