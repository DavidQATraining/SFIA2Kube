from application import app
import random


@app.route('/piratename', methods=['GET'])
def beginning():
    list = ['Long John', 'Cpt. Cutlass', 'One Eye', "Ol' Stinky", 'Sharkbait', 'Black Beard', 'Salty']

    # change for presentation
    #list = ['Cutthroat', 'First Mate', 'Dread Pirate', "Cap'n", 'Admiral', 'Nigel', 'Spiky']
    return list[random.randrange(6)]