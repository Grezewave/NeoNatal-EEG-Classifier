import pandas as pd
from keras.layers import Dense, Input
from keras.models import Model
from sklearn.model_selection import train_test_split
import json
import os
import datetime


def selectFeature(features: pd.DataFrame, featureList: list) -> pd.DataFrame:
    # print(features.loc[:, featureList])
    # features.loc[:, featureList].to_csv("teste")
    return features.loc[:, featureList].values


def createNetwork(inputShape, hiddenLayerUnits, kernel_initializer, optimizer,
                  loss):
    inputLayer = Input(shape=inputShape)
    relu = 'relu'
    sigmoid = 'sigmoid'
    layers = [inputLayer]

    for units in hiddenLayerUnits:
        layers.append(Dense(units=units, activation=relu,
                      kernel_initializer=kernel_initializer)(layers[-1]))

    outputLayer = Dense(units=1, activation=sigmoid)(layers[-1])
    regressor = Model(inputs=layers[0], outputs=[outputLayer])
    regressor.compile(optimizer=optimizer, loss=loss,
                      metrics=['binary_accuracy'])

    return regressor


# Function to write JSON data to a file
def write_json_to_file(filename, data):
    with open(filename, 'w') as file:
        json.dump(data, file, indent=4)


# Function to read JSON data from a file
def read_json_from_file(filename):
    try:
        with open(filename, 'r') as file:
            return json.load(file)
    except FileNotFoundError:
        return []


# Function to append a new log entry
def append_log(execution_date, accuracy, params, features, logFile, baseFile):

    data = read_json_from_file(logFile)
    new_entry = {
        "executionDate": execution_date,
        "accuracy": accuracy,
        "params": params,
        "features": features,
        "baseFile": baseFile
    }
    data.append(new_entry)

    write_json_to_file(logFile, data)

# Function to append a new log entry


def append_model_log(execution_date, accuracy, params, features, logFile,
                     modelFiles):

    data = read_json_from_file(logFile)
    new_entry = {
        "executionDate": execution_date,
        "accuracy": accuracy,
        "params": params,
        "features": features,
        "modelFiles": modelFiles
    }
    data.append(new_entry)

    write_json_to_file(logFile, data)


def loadExperiment(experimentData, features, classes):
    data = experimentData
    parameters = data["params"]
    featuresList = data["features"]

    if "zzclassification" in featuresList:
        featuresList.remove("zzclassification")

    network = createNetwork((parameters["inputShape"][0],),
                            parameters["hiddenLayerUnits"],
                            parameters["kernel_initializer"],
                            parameters["optimizer"], parameters["loss"])

    featureSet = selectFeature(features, featuresList)

    trainingInputs, testInputs, \
        trainingClasses, testClasses = train_test_split(
            featureSet, classes, test_size=0.25)

    print(len(featuresList))
    print(featureSet)

    network.fit(x=trainingInputs, y=trainingClasses,
                batch_size=parameters["batch_size"],
                epochs=parameters["epochs"]
                )
    testResults = network.evaluate(x=testInputs, y=testClasses)

    return network, testResults


def makeFolder(base, word):
    # Obtenha os 4 primeiros caracteres da palavra
    folder_name = word[:4]

    # Obtenha um timestamp com a data/hora atual
    current_time = datetime.datetime.now()
    timestamp = current_time.strftime("%Y%m%d_%H%M%S")

    # Combine os caracteres da palavra e o timestamp para criar o nome da pasta
    folder_name = base + timestamp + "_" + folder_name

    # Crie a pasta com o nome desejado
    try:
        os.mkdir(folder_name)
        print(f"Pasta '{folder_name}' criada com sucesso.")
    except FileExistsError:
        print(f"A pasta '{folder_name}' já existe.")

    return folder_name
