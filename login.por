programa
{
	//Menu básico de criação de usuário e login
	//Mostra os dados do usuário cadastrado
	
	inclua biblioteca Util --> u
	cadeia nomeUsuario, senhaUsuario, nomeUsuarioCadastro="", senhaUsuarioCadastro="", emailCadastro = "", celularCadastro =""
	inteiro opcao
	funcao inicio()
	{
		menu()
	}
	funcao menu(){
		limpa()
		escreva("\tMENU\n")	
		escreva("1 -> Login\n")
		escreva("2 -> Cadastro Novo Usuário\n")
		escreva("3 -> Sair \n")
		leia(opcao)
		escolha (opcao)	
		{
			caso 1: 
		 		loginUsuario()
		 		pare   
		 	caso 2: 
		 		cadastroUsuario()
		 		pare   
		 	caso 3: 
		 		escreva ("Saindo...")
		 		pare
		 	caso contrario: 
		 		escreva ("Opção Inválida !")
		}
	}
	funcao loginUsuario(){
		limpa()
		escreva("\tLogin de Usuário\n\n")
		escreva("Digite o nome de usuário: \n")
		leia(nomeUsuario)
		escreva("Digite a senha de usuário: \n")
		leia(senhaUsuario)
		se(nomeUsuario == nomeUsuarioCadastro e senhaUsuario == senhaUsuarioCadastro){
			escreva("Login Realizado com Sucesso")
			u.aguarde(1250)
			menuLogado()
		}senao{
			escreva("Login Incorreto... Tente Novamente!")
			u.aguarde(1250)
			loginUsuario()
		}
	}
	funcao cadastroUsuario(){
		limpa()
		escreva("\tCadastro de Usuário\n")
		escreva("Digite o nome de usuário: \n")
		leia(nomeUsuarioCadastro)
		escreva("Digite a senha de usuário: \n")
		leia(senhaUsuarioCadastro)	
		escreva("Digite seu e-mail: \n")
		leia(emailCadastro)
		escreva("Digite seu número de celular: \n")
		leia(celularCadastro)
		escreva("Cadastrando Usuário...\n")
		u.aguarde(2000)
		escreva("Usuário Cadastrado com Sucesso!")
		u.aguarde(1500)
		menu()
	}
	funcao menuLogado(){
		cadeia emailVerificar, celularVerificar
		limpa()
		escreva("Bem vindo ",nomeUsuario ,"!")
		escreva("Para ter acesso ao Menu, vamos confirmar alguns dados: \n")
		escreva("Digite seu email: \n")
		leia(emailVerificar)
		escreva("Agora digite seu número de celular: \n")
		leia(celularVerificar)		
		se(emailVerificar == emailCadastro e celularVerificar == celularCadastro){
			escreva("Verificação Realizada com Sucesso!\n")
			escreva("Acesso PERMITIDO\n")
			u.aguarde(1250)
			acessoPermitido()
		}senao{
			escreva("Informações incorretas! Aceso NEGADO!")
			u.aguarde(1200)
			loginUsuario()
		}
	}
	funcao acessoPermitido(){
		limpa()
		escreva("Informações do Usuário: \n")
		escreva("Nome de Usuário: ",nomeUsuarioCadastro,"\n")
		escreva("Email do Usuário: ",emailCadastro, "\n")
		escreva("Celular: ",celularCadastro,"\n")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 98; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */