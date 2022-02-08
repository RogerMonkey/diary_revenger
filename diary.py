import datetime
import json

class Diary(object):
    raw_text = None
    struct_text = None
    date = None
    tempalte = None

    def __init__(self, date, template_path='./diary.template'):
        self.template = json.loads(template_path)
        self.date = date

    def __init__(self, text_path='./tmp.dairy'):
        pass

    def bulid_from_struct(self, struct_txt):
        pass

    def bulid_raw_text(self, raw_txt):
        pass







