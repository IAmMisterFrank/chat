#  GeoChat

An application that let's you chat within the app only whilst in a GeoFence.

## TestFlight link
A public TestFlight link is available from the following [link](https://testflight.apple.com/join/2oIGbzRw). 

### Test Plan
- [ ] Set a Geofence within the Geofencing view, setting a region must render a green circle on the selected region and produce haptic feedback.
- [ ] GeoFencing View Controller must produce MKMapView with users locaton after user granted permissions.
- [ ] GeoFencing Region information is saved to user defaults.
- [ ] Signing in to the chat must save the auth credentials for later, if sign in error occurs, localizedDescription is called to provide user with help in their own language.
- [ ] If signed in and no GeoFence has been set, chat is disabled.
- [ ] If signed in and GeoFence has been set, chat is enabled. 
- [ ] Chat messages must produce text and the sender on top.
- [ ] You cannot send a blank message, that is a message containing only spaces.
- [ ] If user leaves GeoFence region, notification will occur on the iOS device.
- [ ] Notification badge will disappaer when reentering the app.
- [ ] If user has not pressed log out button, user does not have to log back in. App will automatically segue to Chat View Controller.
