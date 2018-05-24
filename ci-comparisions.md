# Bitrise

- will auto-add SSH keys, alternatively can provide your own
- asks about additional private repos, "For example for private CocoaPods, fastlane match, submodule, etc."
- free 2 week "Team" level trial
- `VALIDATING REPOSITORY` step is slow (to be fair, they do say "this may take a few minutes"). But it did detect and generate a config based off of:
   - package.json
   - Podfile
       - interestingly, it found the Podfile but didn't generate a step to install pods
   - iOS project
       - even noted that it wasn't setup as a shared scheme (a mistake on my part)
   - fastlane (all 3 lanes)
  - gradlew
- auto-register webhook
- slick web editor for steps
- instant message chat: >Hi Alex, Oh, snap! Looks like your builds keep failing.
- clicking on a build will show the diff of the build's bitrise config vs the current one
- UI can be clunky at times (try scrolling when using one of the modals)
- no combined iOS & Android stack: https://discuss.bitrise.io/t/xcode-android-sdk-combined-stack/242/2
    - suggestion for now is two builds :(
- bitrise CLI is pretty neat, it was useful while doing some debugging
- iOS build took ~9 minutes (no caching in place)
- [Can only have one workflow per trigger](https://discuss.bitrise.io/t/how-to-trigger-multiple-workflows-at-the-same-time/3401).
    - This is a pain point since it's not possible to do an Android build on iOS without using the Xamarin stack.
    - Surfaces in a very confusing way in their UI -- it just doesn't let you add the same trigger twice, but you never get any feedback 
- workflows don't define their stacks, which is important, e.g., an iOS-based workflow won't run on an Ubuntu VM
    - the relationship can be [defined throught the UI](https://blog.bitrise.io/per-workflow-stack-selection-is-here)
    - stack info is **not** reflected in `bitrise.yml`
        - full spec: https://github.com/bitrise-io/bitrise/blob/master/_docs/bitrise-yml-format-spec.md
        - https://discuss.bitrise.io/t/defining-which-stack-to-use-in-the-yml-file/2882/2
    - even setting a stack for a workflow and then using the "Bitrise run" step doesn't change the stack 
- had a strange network error, wasting 10 minutes of my free trial because `yarn install` couldn't connect. See [build 17](https://www.bitrise.io/build/308a34a1af341511)

# buddybuild
- No longer accepting customers
- No longer offers a free trial and doesn't even prompt you to pay.
    >Your sign-in attempt could not be completed  
        As of March 1 2018, buddybuild has discontinued support for both Android projects, and our Free Starter Plan.
        As a result of this change, if you were a previous customer on the Free Starter Plan, or were a member of an organization with only Android projects, you will no longer be able to have access to buddybuild.
- Even if you wanted to pay, making a new account on their site traps you in a loop -- any navigation (except to the user profile) redirects you to the "Select a repo" stage in their wizard which eventually times out with the above message
- Pretty good documentation
- Active Q&A site with responsive support engineers
- Accept feature requests

# circle ci


# fastlane ci
- fancy url: http://fastlane.ci/ (atm, it redirects to GitHub)
- not currently deployed anywhere
- has a Docker image and a docker-compose file
    - fair bit of setup. need to define encryption keys and created a separate account. 
    - not sure why it needs an account, it asks for both an access token and the account password
