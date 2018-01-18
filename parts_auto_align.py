#!/usr/bin/env python

parts_dict = {'J6 ':'J20 ','J5 ':'J21 ','J2 ':'J22 ','J1 ':'J23 ','J7 ':'J24 ',
			 'U3 ':'U11 ','U5 ':'U12 ','U2 ':'U13 ','U6 ':'U14 ','U1 ':'U15 ','U4 ':'U16 ','U7 ':'U17 ','U8 ':'U18 ','U9 ':'U19 ','U10 ':'U20 ',
			 'RN6 ':'RN21 ','RN5 ':'RN23 ','RN10 ':'RN22 ','RN9 ':'RN24 ','RN4 ':'RN25 ','RN3 ':'RN27 ','RN12 ':'RN26 ','RN11 ':'RN28 ','RN1 ':'RN29 ','RN2 ':'RN31 ',
			 'RN8 ':'RN30 ','RN7 ':'RN32 ','RN15 ':'RN33 ','RN13 ':'RN35 ','RN16 ':'RN34 ','RN14 ':'RN36 ','RN19 ':'RN37 ','RN17 ':'RN39 ','RN20 ':'RN38 ','RN18 ':'RN40 '}


with open('DE0-Nano-SoC_LED.kicad_pcb', 'r') as f:
	raw_lines = f.read().split('\n')

txt_begin = 'fp_text reference '
center = 2*101.115

for key, value in parts_dict.iteritems():
	print key, value
	for i in xrange(len(raw_lines)):
		if 'J' in key:
			if txt_begin+key in raw_lines[i]:
				print raw_lines[i], raw_lines[i-4].split('at')
				key_line = raw_lines[i-4].split('at')
				key_line_coor = key_line[1].split(' ')
				if len(key_line_coor) == 4: 
					key_line_coor = map(float,key_line_coor[1:3])
					key_line_coor[1] = round(center - key_line_coor[1], 3)
					key_line_coor[0] = key_line_coor[0] - 2.54
				elif len(key_line_coor) == 3: 
					key_line_coor[-1] = key_line_coor[-1].replace(')','')
					key_line_coor = map(float,key_line_coor[1:3])
					key_line_coor[1] = round(center - key_line_coor[1], 3)
					key_line_coor[0] = key_line_coor[0] - 2.54


		else:
			if txt_begin+key in raw_lines[i]:
				print raw_lines[i], raw_lines[i-5].split('at')
				key_line = raw_lines[i-5].split('at')
				key_line_coor = key_line[1].split(' ')
				if len(key_line_coor) == 4: 
					key_line_coor = map(float,key_line_coor[1:3])
					key_line_coor[1] = round(center - key_line_coor[1], 3)
				elif len(key_line_coor) == 3:
					key_line_coor[-1] = key_line_coor[-1].replace(')','')
					key_line_coor = map(float,key_line_coor[1:3])
					key_line_coor[1] = round(center - key_line_coor[1], 3)



	key_line_coor = map(str,key_line_coor)
	print key_line_coor
	for i in xrange(len(raw_lines)):
		if 'J' in value:
			if txt_begin+value in raw_lines[i]:
				print raw_lines[i], raw_lines[i-4].split('at')
				value_line_at = raw_lines[i-4].split('at')
				value_line_at_coor = value_line_at[1].split(' ')
				if len(value_line_at_coor) == 4:
					value_line_at_coor[2] = key_line_coor[1]
					value_line_at_coor[1] = key_line_coor[0]
				elif len(value_line_at_coor) == 3:
					value_line_at_coor[2] = key_line_coor[1]+')'
					value_line_at_coor[1] = key_line_coor[0]
				value_line_at[1] = ' '.join(value_line_at_coor)
				raw_lines[i-4] = 'at'.join(value_line_at)


		else:
			if txt_begin+value in raw_lines[i]:
				print raw_lines[i], raw_lines[i-5].split('at')
				value_line_at = raw_lines[i-5].split('at')
				value_line_at_coor = value_line_at[1].split(' ')
				if len(value_line_at_coor) == 4:
					value_line_at_coor[2] = key_line_coor[1]
					value_line_at_coor[1] = key_line_coor[0]
				elif len(value_line_at_coor) == 3:
					value_line_at_coor[2] = key_line_coor[1]+')'
					value_line_at_coor[1] = key_line_coor[0]
				value_line_at[1] = ' '.join(value_line_at_coor)
				raw_lines[i-5] = 'at'.join(value_line_at)

out = '\n'.join(raw_lines)

with open('DE0-Nano-SoC_LED.kicad_pcb', 'w') as f:
    f.write(out)

