  ____    ___      _     
 / __ \  / _ )____(_)_ __
/ /_/ / / _  / __/ /\ \ /
\___\_\/____/_/ /_//_\_\

# SETUP TASKS (DELETE THIS SECTION ONCE COMPLETE)

TO DO: Replace this text with a description of the package along with any notes around development of the pack. Then amend the options below so that related packs are listed.

TO DO: Rename all occurances of "NxDO-PACKAGE-REPO-TEMPLATE" with the name of your pack.

TO DO: Rename all occurances of "ADD REGION HERE" with the region. Options are (AMER, APAC, EMEA, GLOBAL).

TO DO: Add the force-app/main/default folders to your project. YOU WILL GET ERRORS UNTIL YOU DO. Tip: copy the path with slashes and make a new folder in VSCode, it will create all 3 folders in one hit of the retrun key.

TO DO: Delete these intructions from your project.

## Related Packs for Nonprofit (ADD REGION HERE)
These packs are industry specific packs which are also tailored for the region.

Case Management (ADD REGION HERE): 

Outbound Funds and Grant Management (ADD REGION HERE): 

Fundraising (ADD REGION HERE): 

Nonprofit Pack (GLOBAL): https://github.com/SFDO-SE/NxDO-1-NGO-NONPROFIT-GLOBAL

STEPS Branding Pack (GLOBAL): https://github.com/SFDO-SE/NxDO-1-NGO-STEPS


## Related Packs for Education
These packs are industry specific packs which are also tailored for the region.

Recruitment and Admissions (ADD REGION HERE): 

Student Experience (ADD REGION HERE): 

Advancement (ADD REGION HERE): 

Education Pack (GLOBAL): https://github.com/SFDO-SE/NxDO-1-EDU-EDUCATION-GLOBAL

Connected University Branding Pack (GLOBAL): 


## Other Related Packs
These packs provide other packages and configuration relevant to the IDO creation.

Demo Data Recipe Library (Powered with Snowfakery): https://github.com/SFDO-SE/NxDO-4-ALL-SNOWFAKERY

Base Tools and Configuration for all IDOs: https://github.com/SFDO-SE/NxDO-1-ALL-QBRANCH


## Development

To work on this project in a scratch org:

Get help on naming and building NxDO QBrix from here: https://salesforce.quip.com/TL37AfCvNVaI 

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
2. Run `cci flow run dev_org --org dev` to deploy this project.
3. Run `cci org browser dev` to open the org in your browser.

Make changes in the org

4. Run `cci task run list_changes --org dev` to list changes made in the org. Use the list_changes and retrieve_changes task sections to exclude anything you don't want
5. Run `cci task run retrieve_changes --org dev` to retrieve the changes made.
6. Remeber to review source code which has been pulled down.

QA Test

7. Run `cci org remove qa` to remove any previous qa orgs. Then `cci flow run qa_org --org qa` to create a new QA org and test the deployment.
8. Repair any issues if any are noted until the deployment works. To test small changes/fixes, just re-run `cci flow run qa_org --org qa`
9. Run `cci org remove qa` and `cci org remove dev` once complete.

Create Pull Request

10. Once you are happy with the changes made, create a Pull Request for your branch. This will be reviewed by the Solution Development team and you will be notified when the changes have been merged into the main branch

Create Trialforce Template

11. If you dont have your TSO already connected, then connect to your TSO org using `cci org connect OrgNameHere` (replacing orgNamehere with your chosen name for the org - it can be anything!) 
12. Run `cci flow run tso_deploy --org OrgNameHere` to deploy your latest updates into the TSO.
13. Create a new Trialforce template in the TSO. Tip: You can quickly login to your TSO using `cci org browser OrgNameHere`


## Metadata Type Support

You will see these exclusions in the cumulusci.yml file, within the tasks > list_changes and tasks > retrieve_changes sections.

Some Metadata types are not supported with these packs or have been replaced with other types. See list below for notes:

- Profile - These are not supported as they don't pull all related information, fields etc. Use Permission Sets instead.
- FeatureParameter - Currently not supported if they are managed.
- 'AuraDefinition:' - Replaced by AuraDefinitionPack
- SiteDotCom - Replaced by ExperienceCloudPack (remember to enable ExperienceBundle API!)
- ManagedTopics - Not Supported
- AppMenu - Currently a Known Issue - Track here: https://trailblazer.salesforce.com/issues_view?id=a1p30000000T5dqAAC

For help with Metadata Types see the Cookbook here: https://salesforce.quip.com/MpiXAAsVbUV3 

