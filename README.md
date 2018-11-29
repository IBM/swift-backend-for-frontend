[![](https://img.shields.io/badge/IBM%20Cloud-powered-blue.svg)](https://bluemix.net)
![Platform](https://img.shields.io/badge/platform-ios_swift-lightgrey.svg?style=flat)

# Create and deploy a Swift Backend For Frontend (BFF) using Kitura

The Backend for Frontend pattern, commonly known as BFFs, helps you focus on exposing business data and services in a form that matches the user interaction requirements. For instance, to optimize a user journey to your cloud solution, it may require a different user journey for the mobile application but a richer, more detailed journey for the Web application. With IBM Cloud, you can build a BFF by using polyglot programming approach to define the BFF- using Node.js, Swift, or Java. The BFF service exposes a RESTful API matching a [Swagger](http://swagger.io) definition.

![](doc/source/images/architecture.png)

## Requirements

### Local Development Tools Setup (optional)

- On Linux, install the [Swift toolchain](http://www.swift.org) version 3.1.1
- On macOS, install [Xcode](https://developer.apple.com/download) 8.3+

### IBM Cloud development tools setup (optional)

1. Install [IBM Cloud Developer Tools](https://console.bluemix.net/docs/cli/idt/setting_up_idt.html#add-cli) on your machine
2. Install the plugin with: `ibmcloud plugin install dev -r IBM Cloud`

### IBM Cloud DevOps setup (optional)

[![Create Toolchain](https://console.ng.bluemix.net/devops/graphics/create_toolchain_button.png)](https://console.ng.bluemix.net/devops/setup/deploy/)

[IBM Cloud DevOps](https://www.ibm.com/cloud-computing/bluemix/devops) services provides toolchains as a set of tool integrations that support development, deployment, and operations tasks inside IBM Cloud. The "Create Toolchain" button creates a DevOps toolchain and acts as a single-click deploy to IBM Cloud including provisioning all required services.

***Note** you must publish your project to [Github](https://github.com/) for this to work.

## Configuration

Your application configuration information is stored in `config.json`. If you selected services added to your project, you will see Cloudant, Object Storage, and other services with their connection information such as username, password, and hostname listed here. This is useful for connecting to remote services while running your application locally.

When you push your application to IBM Cloud, however, these values are no longer used, and instead IBM Cloud automatically connects to those bound services through the use of environment variables. The `config.json` file has been added to the `.gitignore` file so you don't accidently check in the secret credentials.

## Run

### Using IBM Cloud development CLI

The IBM Cloud development plugin makes it easy to compile and run your application if you do not have all of the tools installed on your computer yet. Your application will be compiled with Docker containers. To compile and run your app, run:

```bash
ibmcloud dev build
ibmcloud dev run
```

### Using your local development environment

Once the Swift toolchain has been installed, you can compile a Swift project with:

```bash
swift build
```

Your sources will be compiled to your `.build/debug` directory.

#### Endpoints

Your application is running at: `http://localhost:8080/` in your browser.

- Your [Swagger UI](http://swagger.io/swagger-ui/) is running on: `/explorer`
- Your Swagger definition is running on: `/swagger/api`

## Debug

#### Using IBM Cloud development CLI

To build and debug your app, run:
```bash
ibmcloud dev build --debug
ibmcloud dev debug
```

## License

[Apache 2.0](LICENSE)
