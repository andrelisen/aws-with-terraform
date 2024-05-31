data "template_file" "s3-public-policy"{
    template = file("policy.json")
    vars = { 
        bucket_name = local.domain
    }
}

module "bucket" {
  source = "github.com/chgasparoto/terraform-s3-object-notification"

#   name   = "my-super-unique-bucket-name"
#   acl    = "public-read"
#   policy = {
#     json = templatefile("policy.json", {
#       bucket_name = local.domain
#     })
#   }

#   versioning = {
#     status = "Enabled"
#   }

#   # This property activates the module to upload the files to the bucket.
#   filepath = "path/to/my/website/files"
#   website = {
#     index_document = "index.html"
#     error_document = "error.html"
#   }

#   logging = {
#     target_bucket = module.logs.name
#     target_prefix = "access/"
#   }

#   notification_topic = [{
#     topic_arn     = aws_sns_topic.topic.arn
#     events        = "s3:ObjectCreated:*"
#     filter_suffix = ".log"
#   }]

#   notification_queue = [{
#     queue_arn     = aws_sqs_queue.queue.arn
#     events        = "s3:ObjectCreated:*,s3:ObjectRemoved:*"
#     filter_suffix = ".jpg"
#   }]

#   # This property creates the needed permissions for the bucket be able to call the lambda.
#   notification_lambda = [{
#     lambda_function_arn = aws_lambda_function.func.arn
#     events              = join(",", ["s3:ObjectCreated:*", "s3:ObjectRemoved:*])
#     filter_suffix       = ".png"
#   }]
}

