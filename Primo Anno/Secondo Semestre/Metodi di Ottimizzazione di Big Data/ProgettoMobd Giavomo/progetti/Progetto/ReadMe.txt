Requisiti:
- Utilizzo JupyterLab --> Anaconda
- Ambiente con Python 3.7 o superiore.
- Scikit-learn, pandas, NumPy, Matplotlib installate.

Per eseguire la valutazione del nostro modello:
- Copiare il test set nella cartella Progetto_Finale.
- Eseguire lo script "valutazione.py" avviando l'interprete Python nella suddetta cartella.
- La routine caricherà il nostro modello dal file "bestClassifier.sav"; 
- Quando richiesto, inserire il nome del file contenente il test set completo di estensione.
- La routine eseguirà lo split del test set in features e labels, chiamerà il metodo "predict"
  e stamperà l'F1 macro score e la matrice di confusione.

Il file "pipeline_cv.ipynb" contiene la definizione di funzioni che calcolano e mostrano l'F1 macro score
e la matrice di confusione, e la definizione di una classe necessaria per il funzionamento del
modello caricato dal file "best_classificatore.sav".

Andrea Efficace, Lorenzo Rossi
