packer {
    required_plugins {
        amazon = {
            version = ">= 0.0.2"
            source = "github.com/hashicorp/amazon"
        }
    }
}

source "amazon-ebs" "FE" {
    ami_name = "ec2_FE_packer_{{timestamp}}"
    instance_type = "t3.medium"
    region = "us-west-2"
    source_ami = "ami-036d46416a34a611c"
    ssh_username = "ubuntu"
    profile = "ssamko"
    tags = {
        "for" = "react-frontend"
    }
}


build {
    name = "React AMI"
    sources = [
        "source.amazon-ebs.FE"
    ]

    provisioner "ansible" {
        playbook_file = "${path.root}/../playbook/FE.yml"
    }
}