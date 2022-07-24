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
    
      ![image](https://user-images.githubusercontent.com/91858017/180660860-8b449db4-8e22-4667-bcb5-7df36be35869.png)

