###  Introduction:
AWS IoT Device provisioning deep dive series provides different ways IoT devices can be provisioned for AWS IoT Core. This is an educational project, and the code samples and libraries should not be applied to a production environment without the appropriate development and understanding.

### Features:
Developing and manufacturing IoT device at scale comes with a multitude of challenges, being one of them, provision the devices with the necessary authentication elements. In AWS IoT Core authentication is handled by customers, following our shared responsibility model. In order to help customers to accomplish provisioning in the most efficient and secure way for their use case, AWS IoT Core supports a number of provisioning methods using X.509 certificates, those are:
Just in time provisioning(JITP)
Just in time registration(JITR)
Multi-account registration
Fleet provisioning - by trusted user
Fleet provisioning - by claim
Bulk registration
Single thing provisioning
Each one of those methods will be suitable to a specific use case, which is usually influenced by the device manufacturing supply chain. In the Device manufacturing and Provisioning with x.509 Certificates in AWS IoT Core white paper, you can learn more about how supply chains can influence you device provisioning strategy.

Click [here](https://github.com/aws-samples/aws-iot-core-device-provisioning-deep-dive#aws-iot-device-provisioning-deep-dive-series) to access the library and start designing your solution.