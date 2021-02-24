# CKA Certification
---

Here is a list of items that helped me prepeare for the CKA exam.

#### Course
This course will recap and also deep dive all the concepts in K8s https://p3.udemy.com/course/certified-kubernetes-administrator-with-practice-tests

Though experianced with Kubernetes this course will help brush up. Take advantage of the labs and practise.

#### Other
- [CKAD-exercises](https://github.com/dgkanatsios/CKAD-exercises) - practice these, many similar questions in CKA.
- [Killer.sh](https://killer.sh/) - try practise test. All questions are rated hard so do not get discouraged. The exam will feel a lot easier and at times make us wonder if there is more to the question.

These discount codes were available when I tested. They might not be valid anymore. Google might help find recent discount codes.
```
DEVOPS15 - LinuxAcademy discount code 20%
walidshaari - killer.sh discount code 20%
```

#### Bookmarks
Kept book marks bar turned on in Chrome. Find my book marks [here](./bookmarks.html).

#### Shell environment

These came in very handy during the test
```
# .profile or .bash_profile
export do="-o yaml --dry-run=client"
alias k="kubectl"
```

The alias and variable helped save a lot of typing, like the below 
```
k run nginx --image=nginx $do > nginx.yml
```

These VIM settings are useful. Get comfortable with VIM if not already. Find similar settings if using emacs. Did not check if emacs came installed by default.
```
# .vimrc
set paste
set tabstop=2
set expandtab
set shiftwidth=2
```

Tmux is not a must but came in handy during one question. Though I had below settings never had to use them.
```
# .tmux.conf
bind-key S set-window-option synchronize-panes on
bind-key U set-window-option synchronize-panes off
set-window-option -g mode-keys vi
```

## Practise environment

Docker Desktop came in handy for 90% of the testing. The rest like kubeadm upgrades, I practised on VMs which can be spun up using Vagrant and Ansible, thanks to this [blog post by Naresh L J](https://kubernetes.io/blog/2019/03/15/kubernetes-setup-using-ansible-and-vagrant/)

Ensure vagrant and ansible are working on the system. Clone this repo and run `make up` to bring up the VMs. There is a `make clean` to destroy the VMs.

Some quick handy commands
```
vagrant status
    Current machine states:
    k8s-master                running (virtualbox)
    node-1                    running (virtualbox)
    node-2                    running (virtualbox)

vagrant ssh k8s-master

kubectl get nodes        # kubectl is pre-configured for the vagrant user
    NAME         STATUS   ROLES    AGE   VERSION
    k8s-master   Ready    master   33d   v1.19.7
    node-1       Ready    <none>   33d   v1.19.7
    node-2       Ready    <none>   33d   v1.19.7
```

All the best!