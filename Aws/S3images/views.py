from django.shortcuts import render
import boto3

# Create your views here.
def getImagesFromS3(request):
    s3 = boto3.client('s3')
    bucket_name = 'saiabhiram-s3'
    response = s3.list_objects_v2(Bucket = bucket_name,Prefix='f1')
    images = []
    if 'Contents' in response:
        for obj in response['Contents']:
            key = obj['Key']
            if key.lower().endswith(('.png', '.jpg', '.jpeg', '.gif', '.bmp')):
                image_url = f'https://{bucket_name}.s3.amazonaws.com/{key}'
                images.append(image_url)
    return render(request, 'S3images/list.html', {'images': images})





