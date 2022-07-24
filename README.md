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
    
    - Generate key to sign helm package, run:
     ```
       gpg --quick-generate-key [uid]
     ```
    - Convert your keyring to the legacy gpg format:
     ```
       gpg --export-secret-keys >~/.gnupg/secring.gpg
     ```
    - Sign helm package:
     ```
       helm package --sign --key 'uid' --keyring ~/.gnupg/secring.gpg ./webapp-chart
     ```
    ![image](https://user-images.githubusercontent.com/91858017/180665234-3ea74284-96cf-4d57-85de-bf681a2113c9.png)
    
    - Create directory and move the package to it
     
    - Create index for the helm package:
     ```
       helm repo index [Package DIRECTORY]
     ```
    ![image](https://user-images.githubusercontent.com/91858017/180666218-6b383876-4444-4ca1-8595-5e9eb0fed822.png)

    - Create GitHub Pages for my repo [WebApp_Chart_Package](https://magdi888.github.io/Helm/webapp-chart-package)
    
    ![image](https://user-images.githubusercontent.com/91858017/180667101-3c979a3c-634c-4fc5-92a9-c13358de047e.png)
    
    - Add chart to Artifact Hub:
    
    ![image](https://user-images.githubusercontent.com/91858017/180667166-93fc1f16-7b76-447c-9caa-bc7653afe497.png)
    
    ![image](https://user-images.githubusercontent.com/91858017/180667222-ad4e7503-3dd7-4ac8-9ca1-5e741b0837fc.png)
    




    
