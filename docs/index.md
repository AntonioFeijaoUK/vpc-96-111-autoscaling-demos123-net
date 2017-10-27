## Link

* ELB Ireland's region - [http://vpc-96-111-autoscaling.demos123.net/](http://vpc-96-111-autoscaling.demos123.net/)
  - Note, is possible to use more than one ELB, and then routing to the multiple ELBs is done on *Route53*

---

## Using AWS Services

* [Amazon Virtual Private Cloud (VPC)](https://aws.amazon.com/vpc/)

* [NAT Gateways](https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html)

* [Internet Gateways](https://http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Internet_Gateway.html)

* [Amazon Elastic Compute Cloud (Amazon EC2)](https://aws.amazon.com/ec2/)

* [Elastic Load Balancing](https://aws.amazon.com/elasticloadbalancing/)

* [Autos Scaling (ASG)](https://aws.amazon.com/autoscaling/)
> with cpu-usage-scale-IN and cpu-usage-scale-OUT simples-policies

* [Amazon Simple Notification Service (SNS)](https://aws.amazon.com/sns/)
> sends email when a new machines was added by ASG (cpu-usage-scale-IN and cpu-usage-scale-OUT simples-policies)

* [Amazon CloudWatch](https://aws.amazon.com/cloudwatch/)
> Added widget into Dashboard with CPU metric of the AutoScalling EC2's CPU utilisation

* [Amazon Route 53](https://aws.amazon.com/route53/)

---

##  Services Usage details

* Autoscaling
  - for scale-in or scale-out based of the workload
  - works with ELB to add or remote EC2 instances (depends on policies and machine status)
  - using Health check from ELB
  
 * Elastic Load Balancer
   - High Availability and Redundancy web-applicatoin across multiple Availability Zones (AZs)
   - Using Public-ELB, routes (balances) the http traffic to the various EC2s
  
* Elastic Cloud Compute (EC2)
  - Using the latest Amazon-Linux machine
  - running basic script on load (**user-data init script**) to download and execute a script from Github,
  (one day will learn to do it from AWS Codedeploy)
  - Script will install a Apache (or ngix) (**httpd**) and loads a basic webpage with **metadata** from the EC2
  - metadata like: machine-id, zone...
    
* VPC routing tables and subnets
  - multi-AZs 
  - multi-subnets (Public and Private)
  - VPC IP range 192.168.96.0/20
    - 192.168.101.0/24 - AZ-a-pub
    - 192.168.102.0/24 - AZ-b-pub
    - 192.168.103.0/24 - AZ-c-pub
    
    - 192.168.104.0/24 - AZ-a-priv
    - 192.168.105.0/24 - AZ-b-priv
    - 192.168.106.0/24 - AZ-c-priv
     
