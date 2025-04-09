variable aws_key {
    default = "hello-key"
    type = string
}

variable region {
    default = ["kaizen", "us-east-2"]
}

variable port {
    default = [22, 80]
    type = list
}

#variable ec2 {
#    type = object({
#        ami = string
#        type = string
#        tags = map(string)
#    })
#    default = {
#        ami = "ami-02cd5b9bfb2512340"
#        type = "t2.micro"
#        tags = {
#        Environment = "dev"
#        Team = "DevOps"
#        Project = "Kaizen"
#    }

    variable ec2 {
    type = list(object({
        ami = string
        type = string
    }))
    default = [
    {
        ami = "ami-02cd5b9bfb2512340"
        type = "t2.micro"
    },
    {
        ami = "ami-02cd5b9bfb2512340"
        type = "t2.micro"
    }
    ]
}
