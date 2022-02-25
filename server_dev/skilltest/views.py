import json
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt


@csrf_exempt
def hello(request):
    user_data = json.loads(request.body.decode("utf-8"))["userRequest"]["utterance"]
    print(user_data)
    data = {
        "version": "2.0",
        "template": {
            "outputs": [
                {
                    "simpleText": {
                        "text": "hello"
                    }
                }
            ]
        }
    }

    return JsonResponse(data)
