#!/usr/bin/python
import argparse
import hashlib
import sys

def md5(f, count):
    hash_md5 = hashlib.md5()
    eof = False
    for i in range(count * 16):
        chunk = f.read(65536)
        if chunk == '':
           eof = True
           break
        hash_md5.update(chunk)
    return (hash_md5.digest(), eof)

parser = argparse.ArgumentParser()
parser.add_argument('filename',
                    help='File that will be used to calculate the MD5 sum on')
parser.add_argument('partsize',
                    type=int,
                    help='Size of individual parts in (MiB)')
parser.add_argument('--base64',
                    action='store_true',
                    help='Display in base64 instead of hexadecimal')
cli_options = parser.parse_args()

try:
    f=open(cli_options.filename, 'rb')
except IOError:
    print 'Cannot open file'
    sys.exit(1)

eof = False
hash_list = []
while eof == False:
    (md5_hash, eof) = md5(f, cli_options.partsize)
    hash_list.append(md5_hash)
f.close()

multipart_hash = hashlib.md5(''.join(hash_list)).hexdigest()
if cli_options.base64 == True:
    multipart_hash = multipart_hash.decode('hex').encode('base64').strip()

print '%s-%d' % (multipart_hash, len(hash_list))