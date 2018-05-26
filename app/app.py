from bottle import Bottle, run, request, template, debug, static_file

import os
import sys
import logging

syslog_address = '127.0.0.1'

#logger = logging.getLogger("usersubmit")
#logger.setLevel(logging.INFO)
#formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
#handler = logging.SysLogHandler(syslog_address, facility=7)
#handler.setFormatter(formatter)
#logger.addHandler(handler)

dirname = os.path.dirname(sys.argv[0])

app = Bottle()
debug(True)

@app.route('/static/css/<filename>')
def send_css(filename):
  return static_file(filename, root=dirname+'/static/css/')

@app.route('/static/js/<filename>')
def send_js(filename):
  return static_file(filename, root=dirname+'/static/js/')

@app.route('/submit', method='POST')
def submit():
  try:
    username     = request.forms.get('username')
    password     = request.forms.get('password')
    ccousername  = request.forms.get('ccousername')
    firstname    = request.forms.get('firstname')
    lastname     = request.forms.get('lastname')
    googleemail  = request.forms.get('googleemail')
    primaryemail = request.forms.get('primaryemail')
    phone        = request.forms.get('phone')
    city         = request.forms.get('city')
    country      = request.forms.get('country')
  except:
    print('user failed to validate all the fields')
    return "all fields are mandatory, please try again"
  print('submit {} {}'.format(username, password))
  return

@app.route('/')
def index():
  data = {"developer_name":"soundgoof", "developer_organization":"serverfarm upstate"}
  return template('index', data = data)


if __name__ == '__main__':
  run(app, host='0.0.0.0', port = 8080)
