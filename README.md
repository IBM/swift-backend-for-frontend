[![](https://img.shields.io/badge/IBM%20Cloud-powered-blue.svg)](https://bluemix.net)
![Platform](https://img.shields.io/badge/platform-ios_swift-lightgrey.svg?style=flat)

# Create and deploy a Swift Backend For Frontend (BFF) using Kitura

> We have similar patterns available for [Node.js](https://github.com/IBM/nodejs-backend-for-frontend), [Java Spring](https://github.com/IBM/spring-backend-for-frontend), and [Java Liberty](https://github.com/IBM/java-liberty-backend-for-frontend) as well!

In this code pattern, you will create a Backend for Frontend (BFF) web service using [Kitura](https://www.kitura.io/) in Swift, matching a RESTful API documented in [Swagger](http://swagger.io).

A BFF can be used to elegantly expose complex backend systems to multiple client-facing platforms, such as iOS and the web, without building a monolothic API that attempts to serve all clients equally. Different types of clients require different types of user experiences, and having a backend API tightly coupled to each specific user experience actually makes for a much more loosely coupled system overall. This pattern helps frontend teams iterate on features faster by giving them more control over the APIs they interact with, without affecting the user experience or development team driving a sister frontend.

When you have completed this code pattern, you will understand how to:

* Build out the Backend for Frontend (BFF) architecture pattern
* Deploy to Kubernetes, Cloud Foundry or a DevOps Pipeline
* Operate an application with monitoring and distributed trace
* Connect to provisioned services

![](doc/source/images/architecture.png)

## Video

Learn more about the Backend for Frontend pattern in this tech talk:

[![BFFs and GraphQL, terms you should know and why](https://img.youtube.com/vi/B5OdK21ZevI/maxresdefault.jpg)](https://www.youtube.com/watch?v=B5OdK21ZevI)

## Steps

> As an alternative to the steps below, you can [create this project as a starter kit](https://cloud.ibm.com/developer/appservice/create-app?starterKit=4ecc64ea-7ca8-32e4-bf7a-752cb42d01b6) on IBM Cloud, which automatically provisions required services, and injects service credentials into a custom fork of this pattern. Then, you can skip directly to step 3 below.

1. [Install development tools](#1-install-development-tools)
1. [Configuration](#2-configuration)
1. [Run](#3-run)

### 1. Install development tools

#### Local Development Tools Setup

- On Linux, install the [Swift toolchain](http://www.swift.org) version _v3.1.1_.
- On macOS, install [Xcode](https://developer.apple.com/download) _v8.3+_

#### IBM Cloud development tools setup

1. Install [IBM Cloud Developer Tools](https://console.bluemix.net/docs/cli/idt/setting_up_idt.html#add-cli) on your machine
2. Install the plugin with: `ibmcloud plugin install dev -r "IBM Cloud"`

### 2. Configuration

Your application configuration information is stored in `config.json`. If you selected services added to your project, you will see Cloudant, Object Storage, and other services with their connection information such as username, password, and hostname listed here. This is useful for connecting to remote services while running your application locally.

When you push your application to IBM Cloud, however, these values are no longer used, and instead IBM Cloud automatically connects to those bound services through the use of environment variables. The `config.json` file has been added to the `.gitignore` file so you don't accidently check in the secret credentials.

### 3. Run

#### Using IBM Cloud development CLI

The IBM Cloud development plugin makes it easy to compile and run your application if you do not have all of the tools installed on your computer yet. Your application will be compiled with Docker containers. To compile and run your app, run:

```bash
ibmcloud dev build
ibmcloud dev run
```

#### Using your local development environment

Once the Swift toolchain has been installed, you can compile a Swift project with:

```bash
swift build
```

Your sources will be compiled to your `.build/debug` directory.

#### Endpoints

Your application is running at: `http://localhost:8080/` in your browser.

- Your [Swagger UI](http://swagger.io/swagger-ui/) is running on: `/explorer`
- Your Swagger definition is running on: `/swagger/api`

## Troubleshooting

Using IBM Cloud development CLI, build and debug your app using:

```bash
ibmcloud dev build --debug
ibmcloud dev debug
```

## License

This code pattern is licensed under the Apache License, Version 2. Separate third-party code objects invoked within this code pattern are licensed by their respective providers pursuant to their own separate licenses. Contributions are subject to the [Developer Certificate of Origin, Version 1.1](https://developercertificate.org/) and the [Apache License, Version 2](https://www.apache.org/licenses/LICENSE-2.0.txt).

[Apache License FAQ](https://www.apache.org/foundation/license-faq.html#WhatDoesItMEAN)
