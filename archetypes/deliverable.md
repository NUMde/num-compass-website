---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
author: # TODO
description: # TODO
draft: true
---

Hier steht etwas Text zur Ankündigung.


{{< btn
        URL="/deliverables/COMPASS_Deliverable_02032021.pdf"
        target="_blank"
        rel="no-opener"
        text="PDF herunterladen"
        icon="tf-ion-document mr-2"
>}}
