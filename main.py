from flask import Flask, render_template
import json
import numpy as np
import pickle
import tensorflow as tf
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

# @app.route("/api/well_level_prediction/<time_forward>", methods=['GET'])
# def api_well_prediction(time_forward='1'):
#     '''
#     front end should send json data on input parameters
#     {
#         'well_data':[[well1],
#                      [well2]...
#                      [well29]
#                     ]
    
#     }
#     '''
#     predict_time_stamp = int(time_forward)
#     TOTAL_WELL_NUM = 29
#     prediction_list = []
#     for i in range(TOTAL_WELL_NUM):
#         prediction_list.append({'well_id':i, 'prediction_value':i+predict_time_stamp})

#     return json.dumps({'all_well_data':prediction_list})

# this is for normal days
# TODO: currently this is for three days ahead, later we can change it into 1 - 20 days ahead
@app.route("/api/well_level_prediction_normal/<time_forward>/<model_inputs>", methods=['GET'])
def api_well_prediction_normal(time_forward='3',model_inputs=''):
    '''
    front end should prepare the model inputs as this format: 
    'well1 what happened today, yesterday, and two days ago,
     well2 what happened today, yesterday, and two days ago
     ...
     well29 what happened today, yesterday, and two days ago'
     e.g., 0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7
    '''
    WELL_ID = [13, 16, 19, 28]
    # for each well model we have 3 inputs
    INPUT_SIZE = 3
    model_inputs = [float(tmp) for tmp in model_inputs.split(',')]
    prediction = []
    for i in range(1, 30):
        if i in WELL_ID:
                test_x = np.array(model_inputs[(i-1)*INPUT_SIZE:i*INPUT_SIZE])
                # test_x = np.array(model_inputs[i*INPUT_SIZE:i*INPUT_SIZE+INPUT_SIZE])
                test_x = test_x.reshape(1,1,INPUT_SIZE)
                model_save_name = 'models/Normal_Model/well_'+ str(i) +'_daily_'+time_forward+'_normal_model'
                # print(model_save_name+"///////////////////")
                # normal model
                if i==28:
                    print("this is for well 28:", test_x)
                model = tf.keras.models.load_model(model_save_name)
                prediction_tmp = model.predict(test_x)[0][0]
                # print prediction
                print('Well '+ str(id) + ' 3 days ahead predicion is: ' + str(prediction_tmp))
                prediction.append(prediction_tmp)

        else:
            prediction.append(0)

    # convert predictions into str
    prediction = [str(tmp) for tmp in prediction]
    return json.dumps({'all_well_data':prediction})

# this is for normal days
# TODO: currently this is for three days ahead, later we can change it into 1 - 20 days ahead
@app.route("/api/well_level_prediction_extreme/<time_forward>/<model_inputs>", methods=['GET'])
def api_well_prediction_extreme(time_forward='3',model_inputs=''):
    '''
    front end should prepare the model inputs as this format: 
    'well1 what happened today, yesterday, and two days ago,
     well2 what happened today, yesterday, and two days ago
     ...
     well29 what happened today, yesterday, and two days ago'
     e.g., 0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7,0.4,0.3,0.5,0.5,0.6,0.7
    '''
    WELL_ID = [13, 16, 19, 28]
    # for each well model we have 3 inputs
    INPUT_SIZE = 3
    model_inputs = [float(tmp) for tmp in model_inputs.split(',')]
    prediction = []
    for i in range(1, 30):
        if i in WELL_ID:
                test_x = np.array(model_inputs[(i-1)*INPUT_SIZE:i*INPUT_SIZE])
                test_x = test_x.reshape(1,INPUT_SIZE)
                model_save_name = 'models/Extreme_Model/well_'+ str(i) +'_daily_3_extreme_model.sav'
                # normal model
                model = pickle.load(open(model_save_name, 'rb'))
                prediction_tmp = model.predict(test_x)[0]
                # print prediction
                print('Well '+ str(id) + ' 3 days ahead predicion is: ' + str(prediction_tmp))
                prediction.append(prediction_tmp)

        else:
            prediction.append(0)

    # convert predictions into str
    prediction = [str(tmp) for tmp in prediction]
    return json.dumps({'all_well_data':prediction})

if __name__ == '__main__':
	# set debug mode
    app.debug = True
    # your local machine ip
    ip = '127.0.0.1'
    app.run(host=ip)

