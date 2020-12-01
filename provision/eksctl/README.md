### Some command dumps

```shell
eksctl utils associate-iam-oidc-provider \
    --region eu-central-1 \
    --cluster ethereum \
    --approve


{
    "Policy": {
        "PolicyName": "ALBIngressControllerIAMPolicy",
        "PolicyId": "ANPAXPNCA465UU73B3PON",
        "Arn": "arn:aws:iam::514125260731:policy/ALBIngressControllerIAMPolicy",
        "Path": "/",
        "DefaultVersionId": "v1",
        "AttachmentCount": 0,
        "PermissionsBoundaryUsageCount": 0,
        "IsAttachable": true,
        "CreateDate": "2020-08-24T21:31:44+00:00",
        "UpdateDate": "2020-08-24T21:31:44+00:00"
    }
}


eksctl create iamserviceaccount \
    --region eu-central-1 \
    --name alb-ingress-controller \
    --namespace kube-system \
    --cluster ethereum \
    --attach-policy-arn arn:aws:iam::514125260731:policy/ALBIngressControllerIAMPolicy \
    --override-existing-serviceaccounts \
    --approve

eksctl create fargateprofile --cluster ethereum --region eu-central-1 --name alb-sample-app --namespace 2048-game


kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.8/docs/examples/2048/2048-namespace.yaml \
&& kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.8/docs/examples/2048/2048-deployment.yaml \
&& kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.8/docs/examples/2048/2048-service.yaml


be1a010e-2048game-2048ingr-6fa0-118692194.eu-central-1.elb.amazonaws.com
be1a010e-2048game-2048ingr-6fa0-118692194.eu-central-1.elb.amazonaws.com


eksctl enable repo \
    --git-url git@github.com:jensbarthel/ethereum-infrastructure.git \
    --git-email jensbarthel@users.noreply.github.com \
    --cluster ethereum \
    --region eu-central-1
```