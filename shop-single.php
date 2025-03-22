<!DOCTYPE html>
<html lang="en">

<head>
  <title>Pharma &mdash; Modèle Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/style.css">

</head>

<body>

  <div class="site-wrap">

    <div id="header"></div>
    <script>
      fetch('shared/header.php')
        .then(response => response.text())
        .then(data => {
          document.getElementById('header').innerHTML = data;
          const currentPath = window.location.pathname.split('/').pop();
          const menuItems = document.querySelectorAll('.site-menu a');
          menuItems.forEach(item => {
            if (item.getAttribute('href') === currentPath) {
              item.parentElement.classList.add('active');
            } else {
              item.parentElement.classList.remove('active');
            }
          });
        })
        .catch(error => console.error('Erreur lors du chargement de l\'en-tête:', error));
    </script>

    <div class="bg-light py-3">
      <div class="container">
      
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-5 mr-auto">
            <div class="border text-center">
              <img id="product-image" src="" alt="Image" class="img-fluid p-5">
            </div>
          </div>
          <div class="col-md-6">
            <h2 class="text-black" id="product-name"></h2>
            <p><del id="product-old-price"></del></p>
            <p id="product-description"></p>
            <p><strong class="text-primary h4" id="product-price"></strong></p>

            
            
            <div class="mb-5">
              <div class="input-group mb-3" style="max-width: 220px;">
                <div class="input-group-prepend">
                  <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                </div>
                <input type="text" class="form-control text-center" value="1" placeholder=""
                  aria-label="Example text with button addon" aria-describedby="button-addon1">
                <div class="input-group-append">
                  <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                </div>
              </div>
            </div>
            
            <!-- Add total price display -->
            <div class="mb-4">
              <h4 class="text-black">Total: <span class="text-primary" id="total-price"></span></h4>
            </div>

            <p><button class="buy-now btn btn-sm height-auto px-4 py-3 btn-primary">Ajouter au panier</button></p>
          

            <div class="mt-5">
              <ul class="nav nav-pills mb-3 custom-pill" id="pills-tab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
                    aria-controls="pills-home" aria-selected="true">Informations de commande</a>
                </li>
            
              </ul>
              <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                  <table class="table custom-table">
                    <thead>
                      <th>Description</th>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">Aires thérapautique</th>
                        <td>Gestion de la douleur : Acétaminophène PM Comprimés Extra-Forts, 500 mg, 100/Bouteille</td>
                        <td>1 Bte</td>
                      </tr>
                      <tr>
                        <th scope="row">DCI</th>
                        <td>Gestion de la douleur : Acétaminophène PM Comprimés Extra-Forts, 500 mg, 100/Bouteille</td>
                        <td>1 Bte</td>
                      </tr>
                      <tr>
                        <th scope="row">Dosage</th>
                        <td>Gestion de la douleur : Acétaminophène PM Comprimés Extra-Forts, 500 mg, 100/Bouteille</td>
                        <td>144/Caisse</td>
                      </tr>
                      <tr>
                        <th scope="row">Forme</th>
                        <td>Gestion de la douleur : Acétaminophène PM Comprimés Extra-Forts, 500 mg, 100/Bouteille</td>
                        <td>1 unité</td>
                      </tr>
                      
                    </tbody>
                  </table>
                </div>
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            
                  
            
                </div>
            
              </div>
            </div>

    
          </div>
        </div>
      </div>
    </div>

    <div class="site-section bg-secondary bg-image" style="background-image: url('images/bg_2.jpg');">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_1.jpg');">
              
            </a>
          </div>
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_2.jpg');">
              
            </a>
          </div>
        </div>
      </div>
    </div>


    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

            <div class="block-7">
              <h3 class="footer-heading mb-4">À propos de nous</h3>
              <p>Biopharm, fondé en 1991, est un groupe pharmaceutique algérien détenant 13 % du marché et exportant en Afrique. Il fabrique 130 produits et est certifié aux normes européennes.</p>
            </div>

          </div>
           
          <div class="col-lg-3 mx-auto mb-5 mb-lg-0">
            <h3 class="footer-heading mb-4">Liens rapides</h3>
            <ul class="list-unstyled">
              <li><a href="https://www.facebook.com/laboratoiresbiopharm" target="_blank">Facebook</a></li>
              <li><a href="https://www.instagram.com/leslaboratoiresbiopharm/" target="_blank">Instagram</a></li>
              <li><a href="https://dz.linkedin.com/company/biopharmdz" target="_blank">LinkedIn</a></li>
              <li><a href="https://www.youtube.com/@laboratoiresbiopharm1348" target="_blank">YouTube</a></li>
            </ul>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="block-5 mb-5">
              <h3 class="footer-heading mb-4">Infos de contact</h3>
              <ul class="list-unstyled">
                <li class="address"><a href="https://www.google.com/maps/search/?api=1&query=18%2C%20rue%20de%20zone%20industrielle%20route%20de%20la%20gare%2C%20Houch%20Mahiéddine%2C%20Reghaia%20-%20Alger%2016000%2C%20Algerie.." target="_blank">18, rue de zone industrielle route de la gare, Houch Mahiéddine, Reghaia - Alger 16000, Algerie..</a></li>
                <li class="phone"><a href="tel:0238510109">023 85 10 109</a></li>
                <li class="email"><a href="mailto:pharmavie@gmail.com">contact@biopharm.dz</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
  <script>
    document.addEventListener("DOMContentLoaded", function() {
      const urlParams = new URLSearchParams(window.location.search);
      const imgSrc = urlParams.get('img');
      const productName = urlParams.get('name');
      const productPrice = urlParams.get('price');
      const productDescription = urlParams.get('description');
      const quantityInput = document.querySelector('.form-control.text-center');
      const minusButton = document.querySelector('.js-btn-minus');
      const plusButton = document.querySelector('.js-btn-plus');

      function updateTotalPrice() {
        const quantity = parseInt(quantityInput.value) || 1;
        const priceText = document.getElementById('product-price').innerText;
        const price = parseFloat(priceText.replace('$', '')) || 0;
        const total = quantity * price;
        document.getElementById('total-price').innerText = `$${total.toFixed(2)}`;
      }

      if (imgSrc) {
        document.getElementById('product-image').src = decodeURIComponent(imgSrc);
      }
      if (productName) {
        document.getElementById('product-name').innerText = decodeURIComponent(productName);
      }
      if (productPrice) {
        document.getElementById('product-price').innerText = `$${parseFloat(productPrice).toFixed(2)}`;
      }
      if (productDescription) {
        document.getElementById('product-description').innerText = decodeURIComponent(productDescription);
      }

      // Initialize total price after setting product price
      updateTotalPrice();

      // Add event listeners for quantity changes
      quantityInput.addEventListener('input', updateTotalPrice);
      quantityInput.addEventListener('change', updateTotalPrice);
      minusButton.addEventListener('click', () => setTimeout(updateTotalPrice, 50));
      plusButton.addEventListener('click', () => setTimeout(updateTotalPrice, 50));

      document.querySelector('.buy-now').addEventListener('click', function(event) {
        event.preventDefault();
        const product = {
          image: document.getElementById('product-image').src,
          name: document.getElementById('product-name').innerText,
          price: document.getElementById('product-price').innerText,
          quantity: parseInt(document.querySelector('.form-control.text-center').value),
          total: document.getElementById('total-price').innerText
        };

        let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
        
        // Check if product already exists in cart
        const existingProductIndex = cartItems.findIndex(item => 
          item.name === product.name && 
          item.price === product.price
        );

        if (existingProductIndex !== -1) {
          // Update quantity of existing product
          cartItems[existingProductIndex].quantity += product.quantity;
          // Update total
          const price = parseFloat(product.price.replace('$', ''));
          cartItems[existingProductIndex].total = `$${(price * cartItems[existingProductIndex].quantity).toFixed(2)}`;
        } else {
          // Add new product to cart
          cartItems.push(product);
        }

        localStorage.setItem('cartItems', JSON.stringify(cartItems));
        
        // Update cart count using the shared function
        if (window.updateCartCount) {
          window.updateCartCount();
        }
        
        // Dispatch storage event for other windows
        window.dispatchEvent(new Event('storage'));
        
        alert('Produit ajouté au panier!');
      });
    });
  </script>

</body>

</html>