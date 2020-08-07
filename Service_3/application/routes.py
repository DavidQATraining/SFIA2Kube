from application import app
import random


@app.route('/piratename', methods=['GET'])
def ending():
    list = ['Dark Water', 'McBarrellgut', "O'Barnicles", 'The Peglegged', 'One-Ear', 'McGhee', 'Feathersword']
    
    # change for presentation
    list = ['Spikybrand', 'The Feared', "Bones", 'Sloppybrand', 'One-Ear', 'The Feared', 'Ginger']
    return list[random.randrange(6)]