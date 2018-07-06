# RegistrationExample

## How to configure one-time registration dialog in iOS

The problem addressed here is one commonly asked about on Stack Overflow: How do I show a 
registration / login screen only on first launch, but never again after the user has
registered or logged in?

The solution is to add a test in your `applicationDidFinishLaunchingWithOptions:` to skip past the
default root view controller if the user has already logged in.
