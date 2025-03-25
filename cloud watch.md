

```bash
sudo yum update -y
sudo amazon-linux-extras install -y collectd
sudo yum install -y amazon-cloudwatch-agent
```

## 4. Configure the CloudWatch Agent

Create a configuration file:

```bash
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard
```


## 5. Start the CloudWatch Agent

Start the agent and configure it to start on boot:

```bash
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json
sudo systemctl enable amazon-cloudwatch-agent
```

## 6. Verify the Agent is Running

Check the status of the agent:

```bash
sudo systemctl status amazon-cloudwatch-agent
```

You should now be able to see your instance metrics in the CloudWatch console within a few minutes.

Would you like more information on any specific part of this setup process?