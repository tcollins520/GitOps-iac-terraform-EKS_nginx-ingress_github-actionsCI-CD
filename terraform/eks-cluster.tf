module "eks" {

  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name    = "vproappgitops-eks"
  cluster_version = "1.32"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_endpoint_public_access = true

  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {

    one = {
      name           = "node-group-1"
      ami_type       = "AL2_x86_64"
      instance_types = ["t3.small"]
      disk_size      = 20

      min_size     = 1
      max_size     = 3
      desired_size = 2
    }

    two = {
      name           = "node-group-2"
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t3.small"]
      disk_size      = 20

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
    Project     = "Vprofile-EKS"
  }
}
