[**Amazon Elastic Cloud Compute (EC2) Service**](https://aws.amazon.com/ec2/)

Amazon EC2 Auto Scaling helps you ensure that you have the correct number of Amazon EC2 instances available to handle the load for your application. Use Auto Scaling groups and set the minimum size to fit current needs and set the maximum size by applying growth % over next 5 years.

An EC2 instance is equivalent to a virtual machine. Instances are grouped into families with different ratios of compute, storage, and network resources to optimally serve your unique workload needs.

Amazon EC2 Auto Scaling helps you ensure that you have the correct number of Amazon EC2 instances available to handle the load for your application. Use Auto Scaling groups and set the minimum size to fit current needs and set the maximum size by applying growth % over next 5 years.

![](./images/image002.png)

Load balance incoming traffic across EC2 instances using [Elastic Load Balancing](https://aws.amazon.com/elasticloadbalancing/) (ELB). ELB is a redundant, horizontally scaled service that requires zero administration.

**[Amazon Virtual Private Cloud (VPC)]**(https://aws.amazon.com/vpc/)

Amazon VPC lets you provision a logically isolated section of the AWS cloud where you can launch AWS resources in a virtual network that you define. You have complete control over IP address range, subnets, and routing rules.

[**VPC subnet**](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html#VPCSubnet)

A subnet is a slice of the overall VPC IP address range and tied to an Availability Zone. Virtual machines deployed into a public subnet can have randomly assigned public IPs and are visible to other Internet hosts. To make a subnet public, you need to create a routing rule for the subnet and direct internet-bound traffic to egress through an internet gateway, which is a horizontally scaled, redundant, and highly available VPC component that allow communication between instances in VPC and the internet.

[**Amazon Route 53**](https://aws.amazon.com/route53/)

Route 53 is a highly available and scalable cloud Domain Name System (DNS) web service. It is designed to give developers and businesses an extremely reliable and cost-effective way to route end users to Internet applications by translating names like [www.example.com](http://www.example.com/) into the numeric IP addresses like 192.0.2.1 that computers use to connect to one another.

[**Amazon Simple Storage Service (Amazon S3).**](https://aws.amazon.com/s3/)

S3 is a highly durable and available object storage solution that is great for storing videos, log files, and image files. S3 achieves 11 9s of durability by making multiple copies of data across a region. Objects stored in S3 are widely accessible through RESTful APIs. S3 can serve as a central static asset repository that knows to partition storage automatically to increase performance as the number of requests increases over time.

[**Amazon CloudFront**](https://aws.amazon.com/cloudfront/)

 When you use S3 as a central repository for assets, you can leverage a content distribution network (CDN) service on AWS to scale further by caching and serving your frequently requested content from XXX+ edge locations around the globe. Amazon CloudFront is capable of serving both static and dynamic content, supports SSL certificates, and costs zero dollars for data transferred from an origin (EC2 or S3) to CloudFront.

[**Amazon DynamoDB**](https://aws.amazon.com/dynamodb/)

 DynamoDB help you scale by storing session or state data. You can store relational data in RDS or Aurora and offload session data to DynamoDB. It's a managed NoSQL database that lets you fine tune performance with provisioned throughput. It is fast, predictable, and highly secure. If you have key-value format session data, using DynamoDB can let you offload work from a primary database and increase overall system performance.

[**Amazon ElastiCache**](https://aws.amazon.com/elasticache/)

 Use Amazon ElastiCache to hold frequently accessed data and further decrease load from a primary database. ElastiCache is protocol compliant with Redis and Memcached. This means if you are using Redis or Memcached today, you don't need to refactor code to start using ElastiCache. A benefit of using ElastiCache is that it is a managed service. This means AWS will detect and replace unhealthy nodes for you. If you use ElastiCache Redis, you also have the option to stand up replicas in a different AZ to increase availability.