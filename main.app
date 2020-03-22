from device_detector import DeviceDetector
import json

def lambda_handler(event, context):
    ua = event['ua']
    p = DeviceDetector(ua).parse()

    res = []

    device = str(p.all_details.get('device', 'None'))
    os = str(p.all_details.get('os', 'None'))
    client = str(p.all_details.get('client', 'None'))

    res.append(device)
    res.append(os)
    res.append(client)

    response = filter(lambda x: x != 'None', res)
    response = ",".join(response)

    return {
        'statusCode': 200,
        'body': eval(json.dumps(response))
    }
#
# event = { "ua" : "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0" }
#
# print(lambda_handler(event))

