import numpy as np
import pickle
import tensorflow as tf

WELL_ID = [13, 16, 19, 28]

# what happened today, one day ago, and two days ago
test_x = np.array([0.5,0.6,0.7])

original_shape = test_x.shape[0]

for id in WELL_ID:
    test_x = test_x.reshape(1,1,original_shape)
    model_save_name = 'Normal_Model/well_'+ str(id) +'_daily_3_normal_model'
    # normal model
    model = tf.keras.models.load_model(model_save_name)
    # just grab the first prediction
    print('Well '+ str(id) + ' 3 days ahead predicion is: ' + str(model.predict(test_x)[0][0]))

    #extreme model
    model_save_name = 'Extreme_Model/well_'+ str(id) +'_daily_3_extreme_model.sav'
    reg = pickle.load(open(model_save_name, 'rb'))
    # just grab the first prediction
    print('Well '+ str(id) + ' 3 days ahead predicion is: ' + str(reg.predict(test_x.reshape(1,original_shape))[0]))
    

