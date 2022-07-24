# Helm

- ### Creating Helm chart for webapp [WebApp Chart](https://github.com/Magdi888/Helm/tree/master/webapp-chart)



- ### Deploy Jenkins Chart on the cluster.
  #### Steps:
    - Visit [Jenkins Helm Chart](https://artifacthub.io/packages/helm/jenkinsci/jenkins)
    - Update helm repo, run:
      ```
      helm repo add jenkins https://charts.jenkins.io
      
      helm repo update
      ```
      ![image](https://user-images.githubusercontent.com/91858017/180660791-37b1b031-64bb-46af-9ace-95210ebce185.png)
    - Install jenkins helm chart, run:
    ```
    helm install [RELEASE_NAME] jenkins/jenkins
    ```
    
     ![image](https://user-images.githubusercontent.com/91858017/180661048-6240a5cd-7854-42fb-9a7c-0f5e2a82b48b.png)
    - Check the chart is installed and app is running, run:
     ``` 
       helm list
       kubectl get pods
     ```
     ![image](https://user-images.githubusercontent.com/91858017/180661256-253a14dc-53ea-40e4-8c92-04cb38f4d426.png)

    - Follow Notes after installiation
      1. Get your 'admin' user password by running:
      ```
         kubectl exec --namespace default -it svc/jenkins -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo
         ```
      2. Get the Jenkins URL to visit by running these commands in the same shell:
         ```
         echo http://127.0.0.1:8080
         kubectl --namespace default port-forward svc/jenkins 8080:8080
         ```
    - Visit jenkins url and login with admin password
      ![image](https://user-images.githubusercontent.com/91858017/180661316-b2086c52-9703-4641-b217-989c072447a7.png)

- ### Push chart to [Artifact Hub](https://artifacthub.io/)
  #### Steps:
      - Package the chart, run:
      
      ```
      helm package ./webapp-chart
      ```
    ![image](https://user-images.githubusercontent.com/91858017/180663983-4bd5fe0c-7459-4bad-84cb-a57eff98e714.png)

