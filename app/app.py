from bottle import Bottle, run, request, template, debug, static_file

import os
import sys
import logging
import requests

dirname = os.path.dirname(sys.argv[0])

app = Bottle()
debug(True)

fusionserver = os.environ['FUSIONSERVER']
fusionport = os.environ['FUSIONPORT']
fusionusername = os.environ['FUSIONUSERNAME']
fusionpassword = os.environ['FUSIONPASSWORD']
fusionurl = 'http://{}:{}/jsonrpc.php'.format(fusionserver, fusionport)


def create_user(username, password, ccousername, firstname, lastname, googleemail, primaryemail, phone, city, country):
  res = requests.post(fusionurl, fusionusername, fusionpassword)
  print(res.text)


@app.route('/static/css/<filename>')
def send_css(filename):
  print('dirname {} static {} filename {}'.format(dirname, '/static/css/', filename))
  return static_file(filename, root=dirname+'/static/css/')


@app.route('/static/js/<filename>')
def send_js(filename):
  return static_file(filename, root=dirname+'/static/js/')


@app.route('/submit', method='POST')
def submit():
  try:
    username     = request.forms.get('username').strip()
    password     = request.forms.get('password').strip()
    ccousername  = request.forms.get('ccousername').strip()
    firstname    = request.forms.get('firstname').strip()
    lastname     = request.forms.get('lastname').strip()
    googleemail  = request.forms.get('googleemail').strip()
    primaryemail = request.forms.get('primaryemail').strip()
    phone        = request.forms.get('phone').strip()
    city         = request.forms.get('city').strip()
    country      = request.forms.get('country').strip()
  except:
    print('user failed to validate all the fields')
    return "all fields are mandatory, please try again"
  print('submit {} {}'.format(username, password))
  res = create_user(username, password, ccousername, firstname, lastname, googleemail, primaryemail, phone, city, country)
  return


@app.route('/')
def index():
  data = {}
  return template('index', data = data)


if __name__ == '__main__':
  run(app, host='0.0.0.0', port = 8080)
