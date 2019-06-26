const s3 = require('s3');

const local_to_s3 = require('./local_to_s3');

exports.aws_s3_init = {
  create_client: function () {
    var client = s3.createClient({
      maxAsyncS3: 20,     // this is the default
      s3RetryCount: 3,    // this is the default
      s3RetryDelay: 1000, // this is the default
      multipartUploadThreshold: 20971520, // this is the default (20 MB)
      multipartUploadSize: 15728640, // this is the default (15 MB)
      s3Options: {
        accessKeyId: process.env.AWS_ACCESS_KEY_ID,
        secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
        // any other options are passed to new AWS.S3()
        // See: http://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/Config.html#constructor-property
      },
    });
    return client
  }
}


exports.aws_s3_manager = {
  
  upload_file: function (filepath, filename, bucket_name, bucket_key) {
    var client = local_to_s3.aws_s3_init.create_client()
    var params = {
      localFile: filepath + "/" + filename, //"some/local/file",

      s3Params: {
        Bucket: bucket_name, //"s3 bucket name",
        Key: bucket_key, //"some/remote/file",
        // other options supported by putObject, except Body and ContentLength.
        // See: http://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/S3.html#putObject-property
      },
    };
    var uploader = client.uploadFile(params);
    uploader.on('error', function (err) {
      console.error("unable to upload:", err.stack);
    });
    uploader.on('progress', function () {
      console.log("progress", uploader.progressMd5Amount,
        uploader.progressAmount, uploader.progressTotal);
    });
    uploader.on('end', function () {
      console.log("done uploading");
    });
  },
  download_file: function (filepath, filename, bucket_name, bucket_key) {
    var client = local_to_s3.aws_s3_init.create_client()
    var params = {
      localFile: filepath + "/" + filename,

      s3Params: {
        Bucket: bucket_name, //"s3 bucket name",
        Key: bucket_key, //"some/remote/file",
        // other options supported by getObject
        // See: http://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/S3.html#getObject-property
      },
    };
    var downloader = client.downloadFile(params);
    downloader.on('error', function (err) {
      console.error("unable to download:", err.stack);
    });
    downloader.on('progress', function () {
      console.log("progress", downloader.progressAmount, downloader.progressTotal);
    });
    downloader.on('end', function () {
      console.log("done downloading");
    });
  }


}

