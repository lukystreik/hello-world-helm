# hello word example with helm
Quelle https://ao.ms/how-to-deploy-a-helm-hello-world-app-onto-kubernetes/



## creating helm chart

```
helm create helloworld-chart



```

Jetzt sollten Sie ein neues Verzeichnis mit dem Namen helloworld-charthaben, das mit dem identisch ist, um das Sie Helm im vorherigen Schritt gebeten haben.

Sie können helm lintinnerhalb dieses Verzeichnisses eine ausführen, wenn Sie möchten, dass Helm einige Konfigurationsprüfungen für die Dateien durchführt. Dies ist jedoch nicht erforderlich, also tun Sie es nur, wenn Sie später Änderungen an den Dateien vorgenommen haben.

Jetzt möchten Sie die values.yamlDatei aktualisieren und ein paar Dinge in den Abschnitten imageund ersetzen:service


Die Dateien entsprechend anpassen dann

```
helm package helloworld-chart

# installieren im Cluster: 

helm install helloworld helloworld-chart-0.1.0.tgz
kubectl get svc --watch
```

