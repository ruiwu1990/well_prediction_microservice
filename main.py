from flask import Flask, render_template
import json
import util

app = Flask(__name__)

@app.route('/')
def index():
    # this is your index page
    # no need to specify which type this varible is...
    # in Python you can even do this:
    # a = 'aaa'
    # a = 1
    log = 'Hello world.'
    # using render_template function, Flask will search
    # the file named index.html under templates folder
    return render_template('index.html', log_html = log)

@app.route("/api/well_level_prediction/<time_forward>", methods=['GET'])
def api_well_prediction(time_forward='1'):
    '''
    front end should send json data on input parameters
    {
        'well_data':[[well1],
                     [well2]...
                     [well29]
                    ]
    
    }
    '''
    predict_time_stamp = int(time_forward)
    TOTAL_WELL_NUM = 29
    prediction_list = []
    for i in range(TOTAL_WELL_NUM):
        prediction_list.append({'well_id':i, 'prediction_value':i+predict_time_stamp})

    return json.dumps({'all_well_data':prediction_list})
    


if __name__ == '__main__':
	# set debug mode
    app.debug = True
    # your local machine ip
    ip = '127.0.0.1'
    app.run(host=ip)

