# Jamf 300 Resources

## Official picture of Course Instructor Sam Valencia 

![sam-actual-picture-not-fake.jpg](images/wolff.jpg)

The following is a general list of useful resources shared within the Jamf 300 training course

### Quizlet Supplementary Study Questions: https://quizlet.com/_bs7wp4?x=1qqt&i=3mdcjl
(Quizlet questions are just a general pool of questions to help cover some topics on Jamf 300)


## Useful links shared in Class
Jamf 300 Course Resources: https://docs.jamf.com/education-services/resources/20220728/300_Resources.html

Jamf Health Check Page Documentation: https://docs.jamf.com/10.40.0/jamf-pro/documentation/Jamf_Pro_Health_Check_Page.html?hl=health%2Ccheck

Apple Documentation for Config Profiles: https://support.apple.com/guide/deployment/plan-your-configuration-profiles-dep9a318a393/web

Show Me Your ID App: https://hcsonline.com/support/apps/show-me-your-id

Website to create LaunchAgents settings: https://zerolaunched.herokuapp.com

SAP Privileges: https://github.com/SAP/macOS-enterprise-privileges

Make Me Admin Script: https://github.com/jamf/MakeMeAnAdmin

FileVault Secure Token and Bootstrap Token: https://support.apple.com/guide/deployment/use-secure-and-bootstrap-tokens-dep24dbdcf9e/web

FileVault Rescrow key: https://github.com/jamf/FileVault2_Scripts/blob/master/reissueKey.sh

Kernel Extensions SQL Querying: https://docs.jamf.com/education-services/resources/20220728/Resources_300_Lesson_08.html

Kernel and System Extensions: https://support.apple.com/guide/deployment/system-and-kernel-extensions-in-macos-depa5fb8376f/1/web/1.0

Pre-Approved JAMF PPPC settings: https://github.com/jamf/JamfPrivacyPreferencePolicyControlProfiles/blob/master/CodesignatureGather.sh

JAMF Pro API Privilege Requirements by Endpoints: https://developer.jamf.com/jamf-pro/docs/classic-api-minimum-required-privileges-and-endpoint-mapping

JAMF Classic API Youtube Video: https://www.youtube.com/watch?v=iWPnzKPavZY

Training Catalog Classic API: https://trainingcatalog.jamf.com/classic-api-put-post-and-delete

Training Catalog Intro to the JAMF API's: https://trainingcatalog.jamf.com/introduction-to-the-jamf-apis

Training Catalog Classic API - Using GET: https://trainingcatalog.jamf.com/classic-api-get

Stop Putting Jamf API Credentials in your scripts: https://macnotes.wordpress.com/2021/11/15/stop-putting-jamf-pro-api-credentials-on-clients/

The MUT app: https://marketplace.jamf.com/details/the-mut

Format Date for Display in a Bash Script: https://www.cyberciti.biz/faq/linux-unix-formatting-dates-for-display/

## Useful Commands:

These are just some commands that I found really useful, but most are copy paste from [the Jamf 300 Course Resources](https://docs.jamf.com/education-services/resources/20220728/300_Resources.html)
Reenroll a machine via DEP
```
sudo profiles renew -type enrollment
```

Enable Debug Mode for Self Service
```
defaults write ~/Library/Preferences/com.jamfosftware.selfservice.plist debug_mode -boolean YES
```

Loading a LaunchDaemon into Memory and Starting it
```
sudo launchctl bootstrap system <launchdaemon/file>
```

Loading a LaunchAgent into Memory and Starting It
```
sudo launchctl gui/<userid> <plist/file>
```

Check condition of a plist
```
plutil -lint <plist/file>
```

Convert a plist file from binary to xml format
```
plutil -convert xml1
```

Check the token status on a user
```
sysadminctl -secureTokenStatus <user-name>
```

Open the kextpolicy Database with SQL
```
sqlite /var/db/SystemPolicyConfiguration/KextPolicy
```

SQL command to get the locally enabled kexts from the /var/db/SystemPolicyConfiguration/KextPolicy database
```
SELECT * FROM kext_policy
```

Check a list of installed system extensions 
```
systemextensionsctl list
```

Read the systemextensions db plist
```
defaults read /Library/SystemExensions/db.plist
```

Get the requirements for an application to display PPPC settings
```
codesign --display --requirements - /Applications/Application.app
```

Get the entitlements for an application 
```
codesign --display --entitlements - /Applications/Application.app
```