import urllib
import urllib

url = 'http://www.nettutor.com/nt/reg.cgi'
values = {'Access Code' : '111 111 1111',
          'Create a User ID' : 'x86',
          'Email' : 'supertramp@google.com',
          'Retype Email' : 'supertramp@google.com',
          'First name' : 'Pedro Lopes',
          'School/Organization' : 'aaa' }
print('macacovelho')
url = urllib.urlencode(values)
data = data.encode('utf-8') # some bytes nigga
req = urllib(url, data)
response = urllib.urlopen(req)
the_page = response.read()
