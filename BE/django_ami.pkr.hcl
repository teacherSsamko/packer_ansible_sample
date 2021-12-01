packer {
    required_plugins {
        amazon = {
            version = ">= 0.0.2"
            source = "github.com/hashicorp/amazon"
        }
    }
}

source "amazon-ebs" "ssamko_BE" {
    ami_name = "ssamko_BE_packer_{{timestamp}}"
    instance_type = "t3.medium"
    region = "us-west-2"
    source_ami = "ami-036d46416a34a611c"
    ssh_username = "ubuntu"
    profile = "ssamko"
    tags = {
        "for" = "ssamkoweb"
    }
}


build {
    name = "ssamko Backend AMI"
    sources = [
        "source.amazon-ebs.ssamko_BE"
    ]

    provisioner "ansible" {
        playbook_file = "${path.root}/playbook/BE.yml"
    }
}