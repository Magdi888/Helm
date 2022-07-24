

# WebApp Helm Chart:

Creating helm chart for webapp from  [GitHub Repo](https://github.com/tradebyte/DevOps-Challenge)

## Steps:
- create chart template with command 
  ```helm create webapp-chart```




  ![image](https://user-images.githubusercontent.com/91858017/180658979-11fa109e-a343-4d37-826e-3cecf7393047.png)

- edit charts files and remove unused things.

- check the helm syntax with command 
  ```
  helm template  webapp ./webapp-chart --debug
  ```




  ![image](https://user-images.githubusercontent.com/91858017/180659130-0ac1b9be-9519-4d47-a558-e0f9285ab819.png)
- check k8s syntax with command 
  ```
  helm install webapp ./webapp-chart --dry-run
  ```



  ![image](https://user-images.githubusercontent.com/91858017/180659228-ed95627b-36ac-4f13-8a28-7502a746bbf3.png)
- install that helm chart in minikube cluster with command 
  ```
  helm install webapp ./webapp-chart
  ```




  ![image](https://user-images.githubusercontent.com/91858017/180659319-979186ef-b1d7-4d16-ab7f-793162b7b209.png)
- check the chart is installed and the app is running, run command  
  ```
     helm list
     kubectl get deploy
     kubectl get svc
     ```




  ![image](https://user-images.githubusercontent.com/91858017/180659413-c14ae139-3783-4df0-817e-0e1f1470e24b.png)
- check the webapp at it's url
  
  
  
  ![image](https://user-images.githubusercontent.com/91858017/180659583-c8235994-8eda-485e-b687-c039542c75a4.png)


