import owncloud
oc = owncloud.Client('https://delicias.dia.fi.upm.es/nextcloud/')
oc.login(input('user:'), input('contraseña:'))
oc.get_file('challenges/PoliticES/dataset/politics_test_evaluation.tsv', 'politics_test_evaluation.tsv')
oc.get_file('challenges/PoliticES/dataset/politics_train_evaluation.tsv', 'politics_train_evaluation.tsv')
