Tasks
*****


Task 1
------
Using the CLI
deploy two EC2 instance on subnet ``us-east-1c``
with a security group
that allows SSH and HTTP traffic.
The instance should use the latest AMI.
Attach your key-pair.
Add a user-data script
to install an Apache webserver
using the following script.
You will need to
use meta-data to get the public-hostname
and the value should be used as a variable.

::

    PHOSTNAME=$(place meta-data command to get public hostname value)

    #!/bin/bash
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1> This is a dev server </h1>" >> /var/www/html/index.html
    echo "############################################" >> /var/www/html/index.html
    echo "<h2> The public hostname of this server is: $PHOSTNAME </h2>" >> /var/www/html/index.html

Add these tags to the instances after you deployed it::

  Name: DevServer
  Env: Dev
  Terminate: yes


Task 2
------
Using the CLI
deploy an EC2 instance
on subnet ``us-east-1b``
with a security group
that allows ssh and http traffic.
The instance should use the latest AMI.
Attach your key-pair.
Add a user-data script
to install an Apache webserver
using the following script.
You will need to use meta-data
to get the public-hostname
and the value should be used as a variable.

::

    PHOSTNAME=$(place meta-data command to get public hostname value)

    #!/bin/bash
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1> This is a prod server </h1>" >> /var/www/html/index.html
    echo "############################################" >> /var/www/html/index.html
    echo "<h2> The public hostname of this server is: $PHOSTNAME </h2>" >> /var/www/html/index.html

Add these tags to the instance after you deployed it::

  Name: Prod-Server
  Env: Prod
  Terminate: yes


Task 3
------
Using the CLI
create a table report of the production servers
where we can only see the instance ID
and the public IP
of those servers.
Using the CLI
create a table report of the development servers
where we can only see
the instance ID and the public IP of those servers.
