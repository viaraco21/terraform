Neste projeto aprendemos como configurar e provisionar uma instancia com o Terraform e depois criar conteudos com o Ansible podendo altera los sem a necesidade de destruir a instancia e podendo acessa los pelo ssh.

comando para entrar no diretorio do projeto
cd /mnt/c/Users/renat/OneDrive/Área\ de\ Trabalho/terraform/pan

comando para editar o arquivo pen
wsl chmod 400 /mnt/c/Users/renat/OneDrive/Área\ de\ Trabalho/terraform/pan/keyraco1.pem
chmod 400 /mnt/c/Users/renat/OneDrive/Área\ de\ Trabalho/terraform/pan/keyraco1.pem
sudo chmod 400 /mnt/c/Users/renat/OneDrive/Área\ de\ Trabalho/terraform/pan/keyraco1.pem


comando para listar
ls -l /mnt/c/Users/renat/OneDrive/Área\ de\ Trabalho/terraform/pan/keyraco1.pem

conexao ssh - alterar o ip
ssh -i /home/raco/keyraco1.pem ubuntu@ec2-52-43-232-168.us-west-2.compute.amazonaws.com

comando para executar o ansible
sudo ansible-playbook playbook.yaml -u ubuntu --private-key keyraco1.pem -i hosts.yaml