# PROOF OF CONCEPT:MINI APP ARCHITECTURE 
This project provides a POC to validate the technology to embed independently deployable Mini Apps (self contained micro-frontends) within existing mobile applications without disrupting the native codebase of the application.

Using simple HTML and CSS it demonstrates how a web application can be packaged,deployed and rendered within a native android shell.


--------------------------------------------
# INSTALLATION
--------------------------------------------
### Install the capacitor into the project
npm init @capacitor/app@latest

### Install the capacitor core js runtime and command line interface
npm i @capacitor/core
npm i -D @capacitor/cli

### initialize the capacitor
npx cap init

### install the capacitor android to the package and add it
npm i @capacitor/android
npx cap add android

### Run build and sync the build with android build
npm run build
npx cap sync android

### Running this example

npm start

```bash
npm run dev
```
