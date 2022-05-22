from bottle import post, request

@post('/activeUsers', method='post')
def active_user_page():
    return "DICK DICK"
