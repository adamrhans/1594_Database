# Punch List Database for USGC 1594
----
During commissioning of the US Gulf Coast Ethylene Cracker for Chevron Phillips, the team needed a way to track field punch items and generate reports based on craft. This database was created as a way to manage, track, report and assign punch items and had several technical obstacles it needed to overcome. 

### Objectives:
- Capture Punch Items from Field Walks and assign responsible party for completion
- Track punch item status to completion
  - Be able to see who entered punch item
  - Who approved the punch item
  - Who closed the punch item
- Generate Reports per Craft on assigned punch items

### Technical Hurdles
#### Database Setup:  
This data needed to be captured and stored into a database for ease of access by multiple users at any given tirme. 

| Tables Needed | Reports Needed |Users|Security|
| ------------- | -------------- |------ |-------|
|Punch Item|Awaiting Approval|First Name|Admin|
|Equipment|Weekly Punch Items Entered|Last Name|Approver|
|P&ID Drawings|Punch Items by Craft|LoginID|User|
|System Drawings|Date Range Report|Email|
|Users|System Punch Items|Secuirty Level|
|Security Roles|Brownfield Zone Report
  
#### Security Challenge:  
Didn't want to have to manage login information. Instead was able to utilized computers login name for the user validation
- Any user in the system could enter a punch item
- Only the users who were approvers could approve punch items and move them up the system
- Admin Users had full access to make changes to the entire db.

#### Access Challenge:  
- Needed Database to have constant uptime
- Needed to have multiple users access at the same time
  - Split Database (Front End UI with Back End Storage)
- Had to include the ability for new users to request access if the weren't on the list of users.
