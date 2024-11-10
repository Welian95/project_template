# Project Template - Anleitung 

Herzlich willkommen zu deinem Projekt-Template! Diese README beschreibt, wie du dieses Repository als Vorlage nutzen kannst, um damit neue Projekte zu erstellen. Der Prozess wird so beschrieben, dass alles in VSCode stattfindet und GitHub verwendet wird, um alles zu verwalten.

## Inhalt
- [Voraussetzungen](#voraussetzungen)
- [Repository als Vorlage nutzen](#repository-als-vorlage-nutzen)
  - [Schritt 1: Repository in VSCode klonen](#schritt-1-repository-in-vscode-klonen)
  - [Schritt 2: Neue virtuelle Umgebung einrichten](#schritt-2-neue-virtuelle-umgebung-einrichten)
  - [Schritt 3: Projekt anpassen](#schritt-3-projekt-anpassen)
  - [Schritt 4: Projekt auf GitHub pushen](#schritt-4-projekt-auf-github-pushen)

## Voraussetzungen
- **Python 3.8 oder höher** sollte auf deinem System installiert sein.
- **VSCode** sollte installiert sein und die Python-Erweiterung aktiviert sein.
- Ein **GitHub-Konto** zum Speichern und Verwalten deines neuen Projekts.

## Repository als Vorlage nutzen

Folge den nachstehenden Schritten, um dieses Template für ein neues Projekt zu verwenden.

### Schritt 1: Repository in VSCode klonen
1. **GitHub Repository klonen**:
    - Öffne VSCode und drücke **Strg+Shift+P** (Windows/Linux) oder **Cmd+Shift+P** (Mac), um die **Befehlspalette** zu öffnen.
    - Gib "Git: Clone" ein und wähle **Git: Clone** aus.
    - Füge die URL deines Repositories ein und wähle einen lokalen Ordner, in den das Projekt geklont werden soll.

2. **Das geklonte Repository öffnen**:
    - Nachdem das Repository geklont wurde, sollte VSCode dich fragen, ob du das Projekt im aktuellen Fenster oder in einem neuen Fenster öffnen möchtest. Wähle die Option, die dir am besten passt.

3. **GitHub über VSCode verbinden**:
    - VSCode wird dich möglicherweise auffordern, dich bei GitHub anzumelden, wenn du noch nicht verbunden bist. Folge den Anweisungen, um dein GitHub-Konto zu verbinden.

### Schritt 2: Neue virtuelle Umgebung einrichten
1. **Terminal in VSCode öffnen**:
    - Öffne das Terminal in VSCode, indem du **Strg+\`** (Windows/Linux) oder **Cmd+J** (Mac) drückst.

2. **Setup-Skript ausführen**:
    - Im Terminal gibst du folgenden Befehl ein, um das Setup-Skript auszuführen:
      ```bash
      chmod +x setup.sh && ./setup.sh
      ```
    - Dieses Skript erstellt eine virtuelle Umgebung und installiert alle Abhängigkeiten, die in der Datei `requirements.txt` definiert sind.

3. **VSCode Python Interpreter einstellen**:
    - VSCode sollte automatisch die virtuelle Umgebung erkennen. Wenn nicht, kannst du **Strg+Shift+P** öffnen und nach **Python: Select Interpreter** suchen. Wähle dort die virtuelle Umgebung aus, die im Ordner `venv` erstellt wurde.
  
4. **Teste ob das Skript läuft**:
  - Führe den folgende Befehl aus um das Main-Skript zu starten::
    ```bash
    streamlit run src/main.py
    ```

### Schritt 3: Projekt anpassen
1. **Projektdateien bearbeiten**:
    - Die Hauptdatei befindet sich im Verzeichnis `src/main.py`. Dort kannst du deine Anwendung anpassen oder erweitern.
    - Weitere Konfigurationen oder Skripte können in der bestehenden Verzeichnisstruktur erstellt werden.

2. **README und andere Dokumentation anpassen**:
    - Bearbeite die Datei `README.md`, um sie den spezifischen Anforderungen deines neuen Projekts anzupassen. Füge beispielsweise eine Beschreibung des Projekts, Kontaktinformationen, Lizenzdetails etc. hinzu.

### Schritt 4: Projekt auf GitHub pushen


1. **Neues Repository erstellen** :
   1. **Neues Repository erstellen** :
    - Wenn du das Template für ein **ganz neues Projekt** nutzen willst, erstelle zuerst ein neues leeres Repository auf GitHub.
    - Dann setze den **Git Remote** auf das neue Repository:
      ```bash
      git remote set-url origin <URL_neues_Repos>
      git push -u origin main
      ```
    - **VSCode GitHub Integration anpassen**:
      - Öffne **VSCode** und klicke auf den **Source Control** Tab (Git-Symbol in der linken Seitenleiste).
      - Oben in der Seitenleiste findest du die Einstellungen für das Repository. Klicke auf die **drei Punkte** (Ellipsen) und wähle **Remote Repository ändern**.
      - Gib die **URL des neuen Repositories** ein, die du gerade auf GitHub erstellt hast. Auf diese Weise wird dein Projekt nicht mehr mit dem Template, sondern mit dem neuen GitHub-Repository verbunden.

      git remote set-url origin <URL_neues_Repos>
      git push -u origin main
      ```

      
3. **Änderungen am template committen** (Optional):
    - Öffne den **Source Control** Tab in VSCode (in der linken Leiste mit dem Git-Symbol).
    - Gib eine **Commit Nachricht** ein, die beschreibt, was du geändert hast (z.B. "Initiale Projektanpassung"). Drücke auf das Häkchen-Symbol, um die Änderungen zu committen.

4. **Änderungen am template pushen** (Optional):
    - Klicke danach auf die **drei Punkte** (Ellipsen) oben im Source Control Menü und wähle **Push** aus, um die Änderungen zu GitHub hochzuladen.
    - Alternativ kannst du auch über das Terminal pushen:
      ```bash
      git push origin main
      ```

## Hinweise zur Nutzung
- **Virtuelle Umgebung aktivieren**: Jedes Mal, wenn du an deinem Projekt arbeitest, solltest du die virtuelle Umgebung aktivieren.
  ```bash
  source venv/bin/activate
``

- **Neue Abhängigkeiten installieren**: Füge neue Bibliotheken in die `requirements.txt` hinzu und führe den Installationsbefehl erneut aus:
  ```bash
  pip install -r requirements.txt
  ```
- **Deaktivieren der virtuellen Umgebung**: Nach Beendigung deiner Arbeit kannst du die virtuelle Umgebung deaktivieren:
  ```bash
  deactivate
  ```
- ** Alternativ: alles zusammen ausfürhern mit:
  ```bash
  ./setup.sh
  ```

## Fertigstellen deines Projekts

Sobald dein Projekt bereit ist, kannst du es direkt aus VSCode auf GitHub veröffentlichen. Benutze dazu die **Push**-Funktion, um deine Änderungen zu synchronisieren, oder nutze das Git-Tool von VSCode.

Viel Erfolg mit deinem Projekt! Solltest du auf Probleme stoßen, überprüfe die Schritte noch einmal in Ruhe oder konsultiere die Dokumentation zu den verwendeten Werkzeugen.

