import json

def lambda_handler(event, context):
    for record in event['Records']:
        body = record['body']
        print(f"Uploaded file: {body}")
    return {
        'statusCode': 200,
        'body': json.dumps('Processed SQS message')
    }
