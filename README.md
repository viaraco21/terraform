Neste projeto aprendemos como configurar e provisionar uma instancia com o Terraform e depois criar conteudos com o Ansible podendo altera los sem a necesidade de destruir a instancia e podendo acessa los pelo ssh.

comando para entrar no diretorio do projeto
cd /mnt/c/Users/renat/OneDrive/Área\ de\ Trabalho/terraform/pan

comando para editar o arquivo pen
chmod 400 /mnt/c/Users/renat/OneDrive/Área\ de\ Trabalho/terraform/pan/raco14-oregon.pem
sudo chmod 400 /mnt/c/Users/renat/OneDrive/Área\ de\ Trabalho/terraform/pan/raco14-oregon.pem


comando para listar
ls -l /mnt/c/Users/renat/OneDrive/Área\ de\ Trabalho/terraform/pan/raco14-oregon.pem

conexao ssh - alterar o ip
ssh -i /home/raco/raco14-oregon.pem ubuntu@ec2-52.13.99.16.us-west-2.compute.amazonaws.com
ssh -i "raco14-oregon.pem" ubuntu@ec2-52.13.99.16.us-west-2.compute.amazonaws.com

comando para executar o ansible - somente este
sudo ansible-playbook playbook.yaml -u ubuntu --private-key raco14-oregon.pem -i hosts.yaml# terraform-aws-ansible

# terraform-aws-ansible teste
# terraform-aws-ansible
