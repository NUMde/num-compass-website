---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
author: # TODO
description: # TODO
draft: true
---

Hier steht etwas Text zur Ankündigung.


{{< btn
        URL="/deliverables/FILE.pdf"
        target="_blank"
        rel="no-opener"
        text="herunterladen"
        icon="tf-ion-document"
>}}
