module AwsHelper


  AWS_ACCESS_KEY_ID = ''
  AWS_SECRET_ACCESS_KEY_ID = ''
  AWS_REGION= ''


  def list_buckets
    s3 = Aws::S3.new
    s3 = Aws.s3
    resp = s3.list_buckets
    return resp.buckets.map(&:name)
  end

  def list_sounds
    s3 = Aws::S3.new
    s3 = Aws.s3
    resp = s3.list_objects(bucket: 'Sounds')
    songs = []
    resp.contents.each do |song|
      songs << song.key
    end

    songs
  end

end