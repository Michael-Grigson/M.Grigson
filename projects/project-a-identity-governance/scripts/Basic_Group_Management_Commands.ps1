# Create a new Azure Active Directory security group in powershell
New-AzADGroup -DisplayName "IT Admins" -MailNickname "ITAdmins" -SecurityEnabled $true


# Add a member to the IT Admins security group in powershell
Add-AzADGroupMember -GroupObjectId <GroupObjectId> -RefObjectId <UserObjectId>


# Remove a member from the IT Admins security group
Remove-AzADGroupMember -GroupObjectId <GroupObjectId> -MemberId <UserObjectId>


# List all members of a specified security group using its ID with Bash
az devops security group membership list --id <groupId>


# Remove a member from the IT Admins security group
Remove-AzADGroupMember -GroupObjectId <GroupObjectId> -MemberId <UserObjectId>
