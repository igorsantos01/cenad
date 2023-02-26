programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Arquivos --> a
	inclua biblioteca Tipos --> t

	cadeia nomeUsuario[5],emailUsuario[5],senhaUsuario[5],cpfUsuario[5],funcaoUsuario[5]
	inteiro idUsuario[5], troca, tam=0,aux
	cadeia nomeCliente[5],cpfCliente[5]
	cadeia nomeProduto[5], fornProduto[5]
	inteiro codProduto[5]
	real valorProduto[5]
	inteiro arqUsuario = a.abrir_arquivo("./usuarios.txt",a.MODO_ESCRITA)
	inteiro arqClientes = a.abrir_arquivo("./clientes.txt",a.MODO_ESCRITA)
	inteiro arqProdutos = a.abrir_arquivo("./produtos.txt",a.MODO_ESCRITA)
	funcao inicio()
	{
		menuPrincipalBloqueado()
	}
	funcao menuPrincipalBloqueado(){
		limpa()
		inteiro opcao
		imprimirTela("*", 50)
		escreva("\n\t\t","MENU PRINCIPAL","\n")
		escreva("1 -> Usuário","\n")
		escreva("2 -> Clientes","\n")
		escreva("3 -> Produtos","\n")
		escreva("\n")
		imprimirTela("*", 50)
		escreva("\n")
		leia(opcao)
		escolha (opcao)	
		{
			caso 1: 
		 		menuUsuarioBloqueado()
		 		pare   
		 	caso 2: 
		 		limpa()
		 		escreva("Acesso Bloqueado! Apenas Usuários Cadastrados tem acesso.","\n")
		 		u.aguarde(1000)
		 		acessoNegado()
		 		pare  
		 	caso 3:
		 		limpa()
		 		escreva("Acesso Bloqueado! Apenas Usuários Cadastrados tem acesso.","\n")
		 		u.aguarde(1000)
		 		acessoNegado()
		 		pare
		 	caso contrario: 
		 		limpa()
		 		escreva ("Opção Inválida !")
		 		limpa()
		 		menuPrincipalBloqueado()
		}
	}
	funcao menuPrincipalLogado(){
		limpa()
		inteiro opcao
		imprimirTela("*", 50)
		escreva("\n\t\t","MENU PRINCIPAL","\n")
		escreva("1 -> Usuário","\n")
		escreva("2 -> Clientes","\n")
		escreva("3 -> Produtos","\n")
		escreva("\n")
		imprimirTela("*", 50)
		escreva("\n")
		leia(opcao)
		escolha (opcao)	
		{
			caso 1: 
		 		menuUsuarioLogado()
		 		pare   
		 	caso 2: 
		 		menuClientes()
		 		pare  
		 	caso 3: 
		 		menuProdutos()
		 		pare
		 	caso contrario: 
		 		escreva ("Opção Inválida !")
		 		limpa()
		 		menuPrincipalLogado()
		}
	}
	funcao imprimirTela(cadeia ast, inteiro quantidade){
		para(inteiro contador = 0; contador < quantidade; contador ++){
			escreva(ast)	
		}
	}
	funcao menuUsuarioBloqueado(){
		inteiro opcao
		limpa()
		imprimirTela("*", 50)
		escreva("\n\t\t","USUÁRIO","\n")
		escreva("1 -> Cadastrar Novo Usuário","\n")
		escreva("2 -> Logar Usuário","\n")
		escreva("3 -> Voltar para o Menu Principal","\n")
		escreva("\n")
		imprimirTela("*", 50)
		escreva("\n")
		leia(opcao)
		escolha (opcao)	
		{
			caso 1: 
		 		cadastroUsuario()
		 		pare   
		 	caso 2: 
		 		loginUsuario()
		 		pare  
		 	caso 3: 
		 		menuPrincipalBloqueado()
		 		pare
		 	caso contrario: 
		 		escreva ("Opção Inválida !")
		 		limpa()
		 		menuPrincipalBloqueado()
		}
	}
	funcao menuUsuarioLogado(){
		inteiro opcao
		limpa()
		imprimirTela("*", 50)
		escreva("\n\t\t","USUÁRIO","\n")
		escreva("1 -> Cadastrar Novo Usuário","\n")
		escreva("2 -> Logar Usuário","\n")
		escreva("3 -> Voltar para o Menu Principal","\n")
		escreva("\n")
		imprimirTela("*", 50)
		escreva("\n")
		leia(opcao)
		escolha (opcao)	
		{
			caso 1: 
		 		cadastroUsuario()
		 		pare   
		 	caso 2: 
		 		loginUsuario()
		 		pare  
		 	caso 3: 
		 		menuPrincipalLogado()
		 		pare
		 	caso contrario: 
		 		escreva ("Opção Inválida !","\n")
		 		menuPrincipalLogado()
		}
	}
	funcao menuClientes(){
		inteiro opcao
		limpa()
		imprimirTela("*", 50)
		escreva("\n\t\t","CLIENTES","\n")
		escreva("1 -> Cadastrar Novo Cliente","\n")
		escreva("2 -> Clientes","\n")
		escreva("3 -> Voltar para o Menu Principal","\n")
		escreva("\n")
		imprimirTela("*", 50)
		escreva("\n")
		leia(opcao)
		escolha (opcao)	
		{
			caso 1: 
		 		cadastroCliente()
		 		pare   
		 	caso 2: 
		 		Clientes()
		 		pare  
		 	caso 3: 
		 		menuPrincipalLogado()
		 		pare
		 	caso contrario: 
		 		escreva ("Opção Inválida !","\n")
		 		menuPrincipalLogado()
		}
	}
	funcao menuProdutos(){
		inteiro opcao
		limpa()
		imprimirTela("*", 50)
		escreva("\n\t\t","PRODUTOS","\n")
		escreva("1 -> Cadastrar Novo Produto","\n")
		escreva("2 -> Verificar Estoque","\n")
		escreva("3 -> Voltar para o Menu Principal","\n")
		escreva("\n")
		imprimirTela("*", 50)
		escreva("\n")
		leia(opcao)
		escolha (opcao)	
		{
			caso 1: 
		 		cadastroProduto()
		 		pare   
		 	caso 2: 
		 		verificarEstoque()
		 		pare  
		 	caso 3: 
		 		menuPrincipalLogado()
		 		pare
		 	caso contrario: 
		 		escreva ("Opção Inválida !","\n")
		 		menuPrincipalLogado()
		}
	}
	funcao cadastroUsuario(){
	para(inteiro contador=0;contador < 5;contador++){
		inteiro resposta
		limpa()
		imprimirTela("*", 53)
		escreva("\n\t\t","CADASTRO DE USUÁRIO","\n")
		escreva("Digite o nome do usuário:")
		leia(nomeUsuario[contador])
		escreva("Digite o email do usuário:")
		leia(emailUsuario[contador])
		escreva("Digite a senha do usuário: ")
		leia(senhaUsuario[contador])
		escreva("Digite o CPF do usuário:")
		leia(cpfUsuario[contador])
		escreva("Digite a função do usuário:")
		leia(funcaoUsuario[contador])
		escreva("\n")
		escreva("ID do Usuário: ")
		idUsuario[contador] = contador+1
		escreva(idUsuario[contador])
		limpa()
		imprimirTela("*", 53)
		escreva("\n")
		escreva("Cadastro realizado com sucesso","\n")
		arquivosUsuario()
		imprimirTela("*", 53)
		escreva("\n")
		u.aguarde(3000)
		limpa()
		escreva("Deseja cadastrar outro usuário?","\n")
		escreva("1 -> Sim","\n")
		escreva("2 -> Não","\n")
		leia(resposta)
		se(resposta == 1){
			u.aguarde(300)	
		}senao se(resposta == 2){
			contador = 5	
			menuUsuarioBloqueado()	
		}
	}
	}
	funcao loginUsuario(){
		cadeia emailDigitado
		cadeia senhaDigitada
		inteiro resposta
		inteiro contador
		logico login = falso
		limpa()
		imprimirTela("*", 53)
		escreva("\n\t\t","LOGIN","\n")
		escreva("Digite seu email: ","\n")
		leia(emailDigitado)
		escreva("Digite sua senha: ","\n")
		leia(senhaDigitada)
		u.aguarde(900)
		para( contador = 0; contador < 5; contador ++){
		se(emailUsuario[contador] == emailDigitado  e senhaUsuario[contador]== senhaDigitada){
			limpa()
			escreva("Login com sucesso","\n")
			u.aguarde(2000)
			login = verdadeiro
			menuPrincipalLogado()
		}
		}
		para( contador = 0; contador < 5; contador ++){
		se(nao login){
			limpa()
			escreva("Login incorreto","\n")
			u.aguarde(2000)
			limpa()
			loginUsuario()
		}
		}
	}
	funcao acessoNegado(){
		inteiro resposta
		escreva("Deseja:","\n")
		escreva("1 -> Fazer login","\n")
		escreva("2 -> Cadastrar Novo Usuário","\n")
		escreva("3 -> Voltar para o Menu Principal","\n")
		leia(resposta)
		se(resposta == 1){
			loginUsuario()
		}senao se(resposta == 2){
			cadastroUsuario()	
		}senao se( resposta == 3){
			menuPrincipalBloqueado()
		}senao{
			escreva("Resposta Invalida","\n")
			u.aguarde(2000)
			menuPrincipalBloqueado()	
		}
	}
	funcao cadastroCliente(){
		limpa()
		inteiro resposta
		para(inteiro contador = 0;contador < 5;contador++){
		imprimirTela("*", 53)
		escreva("\n\t\t","CADASTRO DE CLIENTE","\n")
		escreva("Digite o nome do cliente:","\n")
		leia(nomeCliente[contador])
		escreva("Digite o CPF do cliente:","\n")
		leia(cpfCliente[contador])
		limpa()
		imprimirTela("*", 53)
		escreva("\n")
		arquivosCliente()
		escreva("Cadastro realizado com sucesso","\n")
		imprimirTela("*", 53)
		u.aguarde(2000)	
		limpa()
		escreva("Deseja cadastrar outro usuário?","\n")
		escreva("1 -> Sim","\n")
		escreva("2 -> Não","\n")
		leia(resposta)
		se(resposta == 1){
			u.aguarde(300)	
			limpa()
		}senao se(resposta == 2){
			contador = 5	
			menuClientes()
		}
		}
	}
	funcao Clientes(){
		inteiro resposta
		limpa()
		imprimirTela("*", 53)
		escreva("\n\t\t","CLIENTES","\n")
		escreva("Escolha uma opção:","\n","\n")
		escreva("1 -> Exibir Clientes","\n")
		escreva("2 -> Buscar Clientes","\n")
		escreva("3 -> Menu Anterior","\n")
		leia(resposta)
		escolha (resposta)	
		{
			caso 1: 
		 		exibirClientes()
		 		pare   
		 	caso 2: 
		 		buscarClientes()
		 		pare  
		 	caso 3: 
		 		menuClientes()
		 		pare
		 	caso contrario: 
		 		escreva ("Opção Inválida !","\n")
		 		limpa()
		 		menuPrincipalLogado()
		}
	}
	funcao exibirClientes(){
		inteiro resposta
		limpa()
		imprimirTela("*", 53)
		escreva("\n\t\t","CLIENTES CADASTRADOS","\n")
		para(inteiro contador=0; contador<5; contador ++){
			escreva("Nome: ",nomeCliente[contador],"\n")
			escreva("CPF: ",cpfCliente[contador],"\n")
			escreva("\n")
		}	
		escreva("Deseja voltar para o Menu Anterior?","\n")
		escreva("1 -> Sim","\n")
		escreva("2 -> Não","\n")
		leia(resposta)
		se (resposta == 1){
			Clientes()
		} senao se (resposta == 2){
			u.aguarde(5000)
			exibirClientes()	
		}senao{
			escreva("Opção inválida","\n")
			exibirClientes()	
		}
	}
	funcao buscarClientes(){
		limpa()
		inteiro resposta
		cadeia nome 
		logico cadastrado = falso
		escreva("Digite o nome do cliente que deseja procurar: ","\n")
		leia(nome)
		para(inteiro contador=0; contador < 5; contador++){
			se(nomeCliente[contador] == nome){
				limpa()
				imprimirTela("*", 53)
				escreva("\n")
				escreva("Nome do Cliente: ",nomeCliente[contador],"\n")
				escreva("CPF do Cliente ",cpfCliente[contador],"\n")
				imprimirTela("*", 53)
				escreva("\n")
				cadastrado = verdadeiro
				escreva("\n","Deseja retornar ao menu anterior?","\n")
				escreva("1 -> Sim","\n")
				escreva("2 -> Não","\n")
				leia(resposta)
				se(resposta == 1){
					u.aguarde(1000)	
					Clientes()
				} senao se(resposta == 2){
					buscarClientes()	
				}
			}
		}
		se(nao cadastrado){
			escreva("Cliente não foi encontrado!","\n")
			u.aguarde(3000)
			buscarClientes()	
		}
	}
	funcao cadastroProduto(){	
	limpa()
	para(inteiro contador=0;contador < 5;contador++){
		inteiro resposta
		imprimirTela("*", 53)
		escreva("\n\t\t","CADASTRO DE PRODUTO","\n")
		escreva("Digite o nome do produto:","\n")
		leia(nomeProduto[contador])
		escreva("Digite o valor do produto:","\n")
		leia(valorProduto[contador])
		escreva("Digite o fornecedor do produto","\n")
		leia(fornProduto[contador])
		escreva("Digite o código do produto","\n")
		leia(codProduto[contador])
		limpa()
		imprimirTela("*", 53)
		escreva("\n")
		arquivosProduto()
		escreva("Cadastro realizado com sucesso","\n")	
		imprimirTela("*", 53)
		u.aguarde(3000)
		limpa()
		escreva("Deseja cadastrar outro produto?","\n")
		escreva("1 -> Sim","\n")
		escreva("2 -> Não","\n")
		leia(resposta)
		se(resposta == 1){
			u.aguarde(300)	
			limpa()
		}senao se(resposta == 2){
			contador = 5		
			menuProdutos()
		}
	}
	}
	funcao verificarEstoque(){
		inteiro resposta
		organizarEstoque()
		limpa()
		imprimirTela("*", 53)
		escreva("\n\t\t","PRODUTOS EM ESTOQUE","\n")
		escreva("1 -> Buscar produto pelo nome","\n")
		escreva("2 -> Exibir todos","\n")
		escreva("3 -> Voltar para o Menu Anterior","\n")
		leia(resposta)
		escolha (resposta)	
		{
			caso 1: 
		 		buscarProduto()
		 		pare  
		 	caso 2: 
		 		exibirTodos()
		 		pare   
		 	caso 3: 
		 		menuProdutos()
		 		pare
		 	caso contrario:
		 		escreva ("Opção Inválida !","\n")
		}
		
		u.aguarde(5000)
		menuProdutos()
	}
	funcao exibirTodos(){
		limpa()
		inteiro resposta
		imprimirTela("*", 53)
		para(inteiro contador=0;contador < 5; contador ++){
			escreva("\n")
			escreva("Nome do Produto: ",nomeProduto[contador],"\n")
			escreva("Valor do Produto: ",valorProduto[contador],"\n")
			escreva("Fornecedor: ",fornProduto[contador],"\n")
			escreva("Código do Produto: ",codProduto[contador],"\n")
		}	
		imprimirTela("*", 53)
		escreva("\n")
		u.aguarde(3000)
		escreva("Deseja voltar para o Menu Anterior?","\n")
		escreva("1 -> Sim","\n")
		escreva("2 -> Não","\n")
		leia(resposta)
		se (resposta == 1){
			verificarEstoque()
		} senao se (resposta == 2){
			u.aguarde(5000)
			exibirTodos()	
		}senao{
			escreva("Opção inválida","\n")
			exibirTodos()	
		}
	}
	funcao buscarProduto(){
		limpa()
		cadeia nome 
		logico cadastrado = falso
		escreva("Digite o nome do produto que deseja procurar: ","\n")
		leia(nome)
		limpa()
		para(inteiro contador=0; contador < 5; contador++){
			se(nomeProduto[contador] == nome){
				imprimirTela("*", 53)
				escreva("\n")
				escreva("Nome do Produto: ",nomeProduto[contador],"\n")
				escreva("Valor do Produto: ",valorProduto[contador],"\n")
				escreva("Fornecedor: ",fornProduto[contador],"\n")
				escreva("Código do Produto: ",codProduto[contador],"\n")
				imprimirTela("*", 53)
				escreva("\n")
				cadastrado = verdadeiro
			}
		}
		se(nao cadastrado){
			escreva("Não tem","\n")	
		}
	}
	funcao organizarEstoque(){
		faca {
			troca = 0
			para (inteiro contador = 0; contador < tam-1; contador++){
				se (codProduto[contador] > codProduto[contador+1]){
					aux = codProduto[contador]
					codProduto[contador] = codProduto[contador+1]
					codProduto[contador+1] = aux
					troca = 1
				}	
			}
		}enquanto(troca == 1)
	}
	funcao arquivosUsuario(){
		para(inteiro contador = 0; contador < 5;contador++){
		a.escrever_linha("**************",arqUsuario)
		a.escrever_linha("Nome:", arqUsuario)
		a.escrever_linha(nomeUsuario[contador], arqUsuario)
		a.escrever_linha("\n", arqUsuario)
		a.escrever_linha("CPF: ", arqUsuario)
		a.escrever_linha(cpfUsuario[contador],arqUsuario)
		a.escrever_linha("\n", arqUsuario)
		a.escrever_linha("Email do Usuário: ", arqUsuario)
		a.escrever_linha(emailUsuario[contador], arqUsuario)
		a.escrever_linha("\n", arqUsuario)
		a.escrever_linha("Função do Usuário: ", arqUsuario)
		a.escrever_linha(funcaoUsuario[contador], arqUsuario)
		a.escrever_linha("\n", arqUsuario)
		}
	}
	funcao arquivosCliente(){
		para(inteiro contador = 0; contador < 5;contador++){
		a.escrever_linha("**************",arqClientes)
		a.escrever_linha("Nome:", arqClientes)
		a.escrever_linha(nomeCliente[contador], arqClientes)
		a.escrever_linha("\n", arqClientes)
		a.escrever_linha("CPF: ", arqClientes)
		a.escrever_linha(cpfCliente[contador],arqClientes)
		a.escrever_linha("\n", arqClientes)
		}
	}
	funcao arquivosProduto(){
		para(inteiro contador = 0; contador < 5;contador++){
			a.escrever_linha("**************",arqProdutos)
			a.escrever_linha("Nome:", arqProdutos)
			a.escrever_linha(nomeProduto[contador], arqProdutos)
			a.escrever_linha("\n", arqProdutos)
			a.escrever_linha("Fornecedor: ", arqProdutos)
			a.escrever_linha(fornProduto[contador], arqProdutos)
			a.escrever_linha("\n", arqProdutos)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14227; 
 * @DOBRAMENTO-CODIGO = [15, 19, 55, 85, 84, 89, 118, 146, 174, 202, 243, 276, 295, 326, 353, 377, 412, 447, 475, 503, 541, 540, 557];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */