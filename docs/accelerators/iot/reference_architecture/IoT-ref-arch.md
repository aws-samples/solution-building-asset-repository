### Introduction
The repo provides reference architecture diagrams and the code for IoT reference architectures that can be refered to in IoT presentations.

### CDK reference architecture list
These reference architectures use CDK

#### DynamoDB API

- **Java**

[SQS to DynamoDB to IoT Core](https://github.com/aws-iot-builder-tools/iot-reference-architectures/blob/master/dynamodb-api/java) - An example project that shows how to take messages from SQS, move them DynamoDB, and then query the DynamoDB table with an IoT Core based API. This pattern is useful when multiple applications need access to messages from a device, the messages from a device come through a non-MQTT ingest mechanism and are stored in SQS, or when a device may send multiple messages that need to be processed in order.

#### Binary payloads

- **Java**

[CBOR](https://github.com/aws-iot-builder-tools/iot-reference-architectures/blob/master/cbor-stack) - An example project that shows how to convert between CBOR and JSON. This uses the rules engine base64 encoding support to work with binary payloads in AWS Lambda.

- **Python**

[Amazon Ion](https://github.com/aws-iot-builder-tools/iot-reference-architectures/blob/master/amazon-ion-stack) - An example project that shows how to convert between Amazon Ion and JSON. This uses the rules engine base64 encoding support to work with binary payloads in AWS Lambda.

#### JWT authentication for AWS IoT Core

- **Java**

[Java custom authentication demo with JWT](https://github.com/aws-iot-builder-tools/iot-reference-architectures/blob/master/serverless-ui/jwt-stack) - A stack that contains a serverless UI that shows how to use custom authentication with JWTs in AWS IoT Core

- **Cross-account publish**

[Certificate based stack](https://github.com/aws-iot-builder-tools/iot-reference-architectures/blob/master/cross-account-publish/certificate-based-stack) - A stack that simplifies onboarding an AWS IoT data producer to an account using a certificate to allow cross-account publishing

#### Vending machine

- **Java**

[Disk image vending machine stack](https://github.com/aws-iot-builder-tools/iot-reference-architectures/blob/master/serverless-ui/vending-machine-stack) - A stack that has a web UI to create disk images. Currently supports Raspberry Pi devices and can pre-install and provision the [AWS Systems Manager](https://aws.amazon.com/systems-manager/) agent.

Explore [reference architecture diagrams for IoT solutions](https://github.com/aws-iot-builder-tools/iot-reference-architectures)