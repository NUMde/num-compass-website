---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
author: "Admin"                     #TODO: Bitte "Admin" mit Ihrem Namen ersetzen. Wird auf der Website nicht angezeigt!
description: "Kurzbeschreibung"     #TODO: Diese Beschreibung wird in der Übersicht aller Arbeitsergebnisse angezeigt.
workpackage: 0                      #TODO: Tragen Sie hier die Nummer Ihres Arbeitspakets ein.
code: X.X                           #TODO: Nummer des Arbeitsergebnisses
directlink: ""                      #TODO: Falls Arbeitsergebnis auf andere Seite verweist.
draft: true                         #TODO: Um auf der Website angezeigt zu werden, muss der Wert auf "false" gesetzt werden.
---

Hier steht der ausführliche Text zu Ihrem Arbeitsergebnis. 

Falls Sie eine Datei einbinden möchten, können Sie diesen Shortcut für einen Button verwenden. Der Pfad muss auf Ihre Datei zeigen. Dateien legen Sie im Verzeichnis `/static/deliverables` ab. Sie können den Text des Buttons ändern, indem Sie das Feld `text` entsprechend abändern.

{{< btn
        URL="/deliverables/FILE.pdf"
        target="_blank"
        rel="noopener noreferrer"
        text="herunterladen"
        icon="tf-ion-document"
>}}

Es kann auch das komplette Arbeitsergebnis hier eingetragen werden, falls keine Datei eingebunden werden soll.
