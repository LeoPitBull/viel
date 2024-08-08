<?php
session_start();
if (isset($_POST['submit'])){
    #com acesso

    function sanitizeInput($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
    }

    //print_r('Email: ' . $email . "<br>");
    //print_r('Senha: ' . $senha. "<br>");

    $sql = "SELECT * FROM `clientes` WHERE nome='nome' email = '$email' AND senha = '$senha'";

    $result = $conexao->query($sql);

    //print_r($sql."<br>");
    //print_r($result);

    if (mysqli_num_rows($result) < 1){

    $login_status == false;
    }
    else{
    header('location: index.php');
    $login_status == true;
    }
}
else{
#sem acesso
    header('location: formulario.php');
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>viɘl</title>
</head>
<body>

  <!-- Header -->
<header>
  <div class="search-bar">
    <input type="text" placeholder="Pesquisar">
    <button type="button">
      <img src="lupa.png" alt="Pesquisar">
    </button>
  </div>
  <div class="viel">
    <a href="index.html">
      <h2>viɘl</h2>
    </a>
  </div>
  <div class="cart">
    <img src="carrinho.png" alt="Carrinho de Compras">
  </div>
</header>


  <!-- Navegação -->
  <nav>
    <ul class="navbar">
      <li><a href="index.html">Início</a></li>
      <li><a href="#">Categorias</a></li>
      <li><a href="tabelademedidas.html">Tabela de Medidas</a></li>
      <li><a href="contato.html">Contato</a></li>
    </ul>
  </nav>

 <!-- Carousel -->
<div class="carousel-container">
  <div class="carousel-track">
    <div class="carousel-item">
      <a href="vans.html"> <!-- Adicione a URL da página de compra aqui -->
        <img src="img/lançamentojaqueta.jpeg" alt="Imagem 1">
      </a>
    </div>
  <button class="carousel-prev">&lt;</button>
  <button class="carousel-next">&gt;</button>
</div>

  <!-- Produtos em Lançamento -->
<section class="lancamentos">
  <h2 class="titulo-lancamento">Camiseta Slim</h2>
  <div class="produtos-container">
    <div class="produto">
      <a href="preto.html"> <!-- Adicione a URL da página de compra aqui -->
        <img src="img/camisetapreta1.jpeg" alt="Produto 1">
        <div class="info">
          <p class="nome">Camiseta Slim - Preto</p>
          <p class="preco">R$109,99</p>
          <!-- Adicione outras informações aqui -->
        </div>
      </a>
    </div>
    <div class="produto">
      <a href="cinza.html"> <!-- Adicione a URL da página de compra aqui -->
        <img src="img/camisetacinza1.jpeg" alt="Produto 2">
        <div class="info">
          <p class="nome">Camiseta Slim - Cinza</p>
          <p class="preco">R$109,99</p>
          <!-- Adicione outras informações aqui -->
        </div>
      </a>
    </div>
    <div class="produto">
      <a href="offwhite.html"> <!-- Adicione a URL da página de compra aqui -->
        <img src="img/camisabranca1.jpeg" alt="Produto 3">
        <div class="info">
          <p class="nome">Camiseta Slim - Off</p>
          <p class="preco">R$109,99</p>
          <!-- Adicione outras informações aqui -->
        </div>
      </a>
    </div>
  </div>
</section>

  <!-- JavaScript para o carrossel -->
  <script src="script.js"></script>

  <!-- Rodapé -->
<footer class="rodape">
  <div class="container">
    <div class="info-contato">
      <h3>Entre em Contato</h3>
      <p>Email: suportesneakersdosguri@gmail.com</p>
      <p>Telefone: (45) 99851-2463</p>
    </div>
    <div class="redes-sociais">
      <h3>Siga-nos</h3>
      <a href="https://instagram.com/sneakersdosguri?igshid=MzMyNGUyNmU2YQ%3D%3D&utm_source=qr" target="_blank" rel="noopener noreferrer">
        <img src="instagram.png" alt="Instagram">
      </a>
      <a href="https://www.tiktok.com/@sneakers.dos.guri?_t=8hoFCZ8qnPp&_r=1" target="_blank" rel="noopener noreferrer">
        <img src="tiktok.png" alt="TikTok">
      </a>
    </div>
  </div>
  <div class="creditos">
    <p>&copy; 2023 SneakersDosGuri. Todos os direitos reservados.</p>
  </div>
</footer>

</body>
</html>
