from bottle import route, run, template

@route('/')
def index():
    return template('index')

@route('/suggest/:keyword')
def suggest(keyword):
	with open('words.txt') as f:
		words = f.readlines()
		matched_words = []
		for word in words:
			if word.startswith(keyword):
				matched_words.append(word)
				if len(matched_words) == 10:
					break
		html_li_element = ['<li>%s</li>' % word for word in matched_words] 
		return html_li_element

run(host='localhost', port=8080)
