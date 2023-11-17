###  Introduction:

Energy Monitoring for Digital Twins with AWS IoT is an accelerator consists of a AWS Cloud Formation template which creates and configures the AWS services required to deploy data ingestion, storage and 3D visualization components that are required for a energy monitoring solution in a digital twin. 

### Features:
AWS IoT Core ingests the uplink energy meter readings from the field device via MQTT
Amazon Timestream stores the timeseries data
AWS IoT TwinMaker provides the capability to build 3D model and entity hierarchy of the digital twin and bind the data stored in Timestream to these entities.
Amazon Managed Grafana provides a flexible, no-code builder for the user to build a custom dashboard.

### Architecure
![FHIR on AWS](../../resources/images/Energy-Monitoring-IoT.png)
Click [here](https://github.com/aws-samples/iot-x-energy-monitoring) to access the library and start designing your solution.