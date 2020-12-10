#!/usr/bin/python

parsed = {}
with open('/proc/meminfo') as meminfo:
        for line in meminfo:
                id, data = line.strip().split()[:2]
                parsed[id[:-1]] = int(data)

gb_total = parsed['MemTotal']

gb_used = (parsed['MemTotal'] + parsed['Shmem'] - parsed['MemFree'] -
           parsed['Buffers'] - parsed['Cached'] - parsed['SReclaimable'])

print( '%.0f MB' % (gb_used / 1024.0))


