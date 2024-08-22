<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="./header.jsp"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${pageHeading}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer">
    
	<!--CSS Start-->
	<style>
        body {
            font-family: 'Poppins', sans-serif;
        }
        .custom-header {
            background: linear-gradient(135deg, #4158D0, #C850C0, #FFCC70);
            padding: 15px 20px;
            color: white;
        }
        .custom-header .navbar-brand {
            font-size: 28px;
            font-weight: bold;
        }
        .custom-header .nav-link {
            color: white;
            margin-right: 20px;
            font-size: 16px;
            transition: color 0.3s;
        }
        .custom-header .nav-link:hover {
            color: #FFCC70;
        }
        .custom-header .nav-link.active {
            font-weight: bold;
            color: #C850C0;
        }
        .custom-header .navbar-toggler {
            border: none;
            color: white;
        }
        .custom-header .navbar-toggler:focus {
            box-shadow: none;
        }
        .float-start, .float-end {
            font-size: 16px;
        }
        .float-end a {
            color: #FFCC70;
            text-decoration: none;
        }
        .float-end a:hover {
            color: #C850C0;
        }
		.btn-success {
		    background-color: #28a745;
		    border: none;
		    position: fixed;  /* Use fixed positioning */
		    top: 174px;     /* Distance from the bottom of the viewport */
		    right: 295px;      /* Distance from the right of the viewport */
		    height: 39px;
		    width: 113px;
		    z-index: 1000;    /* Ensure the button is above other content */
		}

        .btn-success:hover {
            background-color: #218838;
        }
        .modal-header {
            background-color: #f8f9fa;
        }
        .modal-body {
            background-color: #fff;
        }
        .modal-footer {
            background-color: #f8f9fa;
        }
        .alert {
            margin-bottom: 0;
        }
        .table th, .table td {
            text-align: center;
        }
        .table-dark th, .table-dark td {
            color: #fff;
            background-color: #343a40;
        }
		.modal-content {
		            border-radius: 10px;
		            border: 1px solid #dee2e6;
		            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
		        }
		        .modal-header {
		            background-color: #f7f7f7;
		            border-bottom: 1px solid #e5e5e5;
		            border-radius: 10px 10px 0 0;
		            padding: 1.25rem;
		        }
		        .modal-title {
		            font-size: 1.25rem;
		            color: #333;
		        }
		        .btn-close {
		            filter: brightness(0.6);
		        }
		        .btn-close:hover {
		            filter: brightness(1);
		        }
		        .modal-body {
		            padding: 1.5rem;
		            background-color: #ffffff;
		        }
		        .form-control {
		            border-radius: 5px;
		            border: 1px solid #ced4da;
		            box-shadow: none;
		        }
		        .form-control:focus {
		            border-color: #495057;
		            box-shadow: 0 0 0 0.2rem rgba(0, 0, 0, 0.1);
		        }
		        .form-label {
		            font-weight: 500;
		            color: #495057;
		        }
		        .alert-danger {
		            border-radius: 5px;
		        }
		        .modal-footer {
		            border-top: 1px solid #e5e5e5;
		            background-color: #f7f7f7;
		            padding: 1rem;
		            border-radius: 0 0 10px 10px;
		        }
		        .btn-secondary, .btn-primary {
		            border-radius: 5px;
		            padding: 0.5rem 1rem;
		        }
		        .btn-secondary {
		            background-color: #6c757d;
		            border: none;
		        }
		        .btn-secondary:hover {
		            background-color: #5a6268;
		        }
		        .btn-primary {
		            background-color: #007bff;
		            border: none;
		        }
		        .btn-primary:hover {
		            background-color: #0056b3;
		        }
				.input-group-text {
				        background-color: #f7f7f7;
				        border: 1px solid #ced4da;
				        border-radius: 5px 0 0 5px;
				        padding: 0.375rem 0.75rem;
				        font-size: 1rem;
				        line-height: 1.5;
				    }
				    .input-group .form-control {
				        border-radius: 0 5px 5px 0;
				        border-left: 0;
				        padding-left: 0.75rem;
				    }
				    .input-group {
				        width: 100%;
				    }
					.scrolling-text {
					  font-size: 2em;
					  font-weight: bold;
					  color: #ff007f; /* Starting color */
					  text-shadow: 2px 2px 4px #000000; /* Shadow effect */
					  animation: rainbow 5s linear infinite;
					}

					/* Rainbow color animation */
					@keyframes rainbow {
					  0% { color: #ff007f; }   /* Pink */
					  20% { color: #ff8c00; }  /* Orange */
					  40% { color: #ffd700; }  /* Gold */
					  60% { color: #32cd32; }  /* Lime Green */
					  80% { color: #1e90ff; }  /* Dodger Blue */
					  100% { color: #ff007f; } /* Back to Pink */
					}

    </style>
	<!--CSS End-->
</head>
<script type="text/javascript">
function pageloaded()
{
	getAllProducts();	
}
function getAllProducts() {
	let httpRequest = new XMLHttpRequest();
	httpRequest.open("GET","http://localhost:8081/allProducts",true);
	httpRequest.setRequestHeader('Authorization', 'Bearer ' + localStorage.getItem("jwtToken"));
	httpRequest.send();
	httpRequest.onload=function()
	{
		
		 if (httpRequest.status >= 200 && httpRequest.status < 300) {
             let products = JSON.parse(httpRequest.responseText); 
             if(products.length > 0)
             {
            	 displayProducts(products); 
             }
             else
             {
            	 var productTable = document.getElementById('productTable');
            	 productTable.innerHTML = ''; 
            	 var row = productTable.insertRow();
           		 var cell = row.insertCell(0);
            	 cell.colSpan = 5;
            	 cell.style.textAlign = 'center';
            	 cell.innerText = "No Record Found";
             }	 
             
         } else {
             console.error('Request failed with status:', httpRequest.status);
         }
	}

}

function displayProducts(products) {
    var productTable = document.getElementById('productTable');
    productTable.innerHTML = ''; 
    products.forEach(product => {
        var row = productTable.insertRow();
        row.insertCell(0).innerText = product.productId;
        row.insertCell(1).innerText = product.name;
        row.insertCell(2).innerText = product.description;
		var priceValue = parseFloat(product.price);  // Parse price as float
		       if (!isNaN(priceValue)) {  // Check if the price is valid
		           var formattedPrice = priceValue.toLocaleString('en-IN');  // Format price with commas and Indian Rupee symbol
		           row.insertCell(3).innerHTML = '₹ ' + formattedPrice;  // Insert formatted price
		       } else {
		           row.insertCell(3).innerText = 'Invalid Price';  // Insert error message if price is invalid
		       }
		row.insertCell(4).innerHTML = 
		           '<a href="" onClick="confirmDeleteProduct(' + product.productId + '); return false;">' +
		           '<i class="fa fa-trash-alt"></i></a> &nbsp; ' +  // Create delete link
		           '<a href="#" onClick="editProduct(\'' + product.productId + '\', \'' + escapeQuotes(product.name) + '\', \'' + escapeQuotes(product.description) + '\', ' + product.price + '); return false;" class="ml-10">' +
		           '<i class="fa fa-edit"></i></a>';  // Create edit link
    });
}
function escapeQuotes(str) 
{
    return str.replace(/'/g, "\\'");
}
var productIdToDelete = null;  // Variable to store product ID to delete

// Function to show the confirmation modal
function confirmDeleteProduct(productId) {
    productIdToDelete = productId;  // Store the product ID to delete

    var myModal = new bootstrap.Modal(document.getElementById('deleteProductModal'));
    myModal.show();  // Show the confirmation modal
}

document.addEventListener('DOMContentLoaded', function() {
    var confirmDeleteButton = document.getElementById('confirmDeleteButton');

    if (confirmDeleteButton) {
        confirmDeleteButton.addEventListener('click', function() {
            if (productIdToDelete !== null) {
                var httpRequests = new XMLHttpRequest();
                var url = "http://localhost:8081/products/" + productIdToDelete;

                httpRequests.open("DELETE", url, true);
                httpRequests.setRequestHeader('Authorization', 'Bearer ' + localStorage.getItem("jwtToken"));
                httpRequests.send();

                httpRequests.onload = function() {
                    if (httpRequests.status == 200) {
                        console.log('Product deleted successfully');
                        getAllProducts();  // Refresh the product list
                        var myModal = bootstrap.Modal.getInstance(document.getElementById('deleteProductModal'));
                        myModal.hide();  // Hide the confirmation modal
                    } else if (httpRequests.status == 403) {
                        console.error('Access forbidden:', httpRequests.responseText);
                        document.getElementById('deleteText').innerText = httpRequests.responseText;
                    } else {
                        console.error('Delete request failed with status:', httpRequests.status, httpRequests.responseText);
                    }
                };

                httpRequests.onerror = function() {
                    console.error('Request error:', httpRequests.statusText);
                };

                productIDToDelete = null;  // Reset the productIDToDelete variable
            } else {
                console.warn('No product selected for deletion');
            }
        });
    } else {
        console.error('Confirm Delete Button not found');
    }
});



function openAddProductModal() {
    resetProductForm();  // Reset the form fields
    var myModal = new bootstrap.Modal(document.getElementById('addProductModal'));  // Create a new Bootstrap modal instance
    myModal.show();  // Show the add product modal
}



//function openAddProductModal() 
//{
//	  resetProductForm();
//	  var myModal = new bootstrap.Modal(document.getElementById('addProductModal'));
//	  myModal.show();
//}
//function openDeleteProductModal() 
//{
//		var mydeleteModal = new bootstrap.Modal(document.getElementById('deleteProductModal'));
//		mydeleteModal.show();
//}
var gproductId=0;
function editProduct(productId,name,description,price)
{
	   gproductId=productId;
	   var myModal = new bootstrap.Modal(document.getElementById('addProductModal'));
	   myModal.show();
	   document.getElementById('productName').value=name;
	   document.getElementById('productPrice').value=price;
	   document.getElementById('productDescription').value=description;
	   document.getElementById('addProductModalLabel').innerHTML ="Edit Product";
	   document.getElementById('addProductModalButton').innerHTML = "Update Product";
}
  
function validateForm() 
{
    var errorMessages = '';
    var productName = document.getElementById('productName').value;
    var productPrice = document.getElementById('productPrice').value;
    var productDescription = document.getElementById('productDescription').value;

    if (!productName.trim())
    {
      	errorMessages += '<li>Product name is required.</li>';
	}
    if (!productPrice.trim())
    {
    	errorMessages += '<li>Product price is required.</li>';
    }	
    if (isNaN(productPrice)) 
    {
      	errorMessages += '<li>Product price must be a positive number.</li>';
    }

    if (!productDescription.trim()) 
    {
      	errorMessages += '<li>Product description is required.</li>';
    }

   	return errorMessages || null;
}
function resetProductForm()
{
		document.getElementById('errorBoxID').style.display="none";
	    document.getElementById('addProductErrorMessage').innerHTML = "";
	    document.getElementById('addProductModalLabel').innerHTML ="Add Product";
	   	document.getElementById('addProductModalButton').innerHTML = "Add Product";
	    document.getElementById('productName').value="";
	    document.getElementById('productPrice').value="";
	    document.getElementById('productDescription').value="";
	    gproductId=0;
}
function addProduct(event)
{
        
	  	event.preventDefault();
		var productId = gproductId;
		var errorMessages = validateForm();
	    if (errorMessages) 
	    {
	      document.getElementById('errorBoxID').style.display="block";
	      document.getElementById('addProductErrorMessage').innerHTML = errorMessages;
	      return;
	    }
	    var productName = document.getElementById('productName').value;
	    var productPrice = document.getElementById('productPrice').value;
	    var productDescription = document.getElementById('productDescription').value;
	    
	    var token = localStorage.getItem('jwtToken'); 

	    var xhr = new XMLHttpRequest();
	    xhr.open('POST', 'http://localhost:8081/products', true);
	    xhr.setRequestHeader('Content-Type', 'application/json');
	    xhr.setRequestHeader('Authorization', 'Bearer ' + token);

	    xhr.onload = function() 
	    {
	        if (xhr.status === 200) 
	        {
	        	resetProductForm();
		        var myModal = bootstrap.Modal.getInstance(document.getElementById('addProductModal'));
		        myModal.hide(); 
		        getAllProducts();
	        }
	        else if(xhr.status == 403)
	        {
				document.getElementById('errorBoxID').style.display="block";
				document.getElementById('addProductErrorMessage').innerHTML="<li>"+xhr.responseText+"</li>";
	        }
	        else 
	        {
	        	document.getElementById('errorBoxID').style.display="block";
	          	document.getElementById('addProductErrorMessage').innerText = '<li>Error: ' + xhr.statusText+"</li>";
	        }
	      
	    };

        if(productId == 0 || productId == null)
        {
		    var data = JSON.stringify({
		      name: productName,
		      price: productPrice,
		      description: productDescription
		    });
		}
		else
		{
			var data = JSON.stringify({
		      productId : productId,
		      name: productName,
		      price: productPrice,
		      description: productDescription
		    });
		
		}
	    xhr.send(data); 
	  
	  	
}

</script>
<!--Body Part Start-->
<body onload="pageloaded();" style="background-color: #f0f0f0;">
	
	<!--Header Start-->
    <header class="custom-header">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <i class="fa fa-leaf"></i> PRODUCT MANAGEMENT
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class="fa fa-bars"></i></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
	<!--Header End-->
	
	<!--Product List And Role Diplay Start-->
    <div class="container text-center mt-4">
       <marquee behavior="scroll" direction="left">  <h1 class="scrolling-text">Welcome To Our ${pageHeading}</h1></marquee>
        <div class="d-flex justify-content-between align-items-center mb-4">
            <span>Welcome <b>${userName}</b></span>
			<a style="color: #212529; border-color: #dc3545;" href="${pageContext.request.contextPath}/dashboard-page" class="btn btn-outline-light">Logout</a>
        </div>
        <div class="mt-5">
            <table class="table table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody id="productTable">
                    <!-- Products will be loaded here -->
                </tbody>
            </table>
            <div>
                <a href="#" onclick="openAddProductModal();" class="btn btn-success">Add Product</a>
            </div>
        </div>
    </div>
	<!--Product List And Role Diplay End-->
	
   	<!-- Product Delete popup open Start-->
	<!-- Confirmation Modal -->
	<div class="modal fade" id="deleteProductModal" tabindex="-1" aria-labelledby="deleteProductModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="deleteProductModalLabel">Confirm Delete</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <div id="deleteText" class="alert alert-danger" role="alert">
	          Are you sure you want to delete this product?
	        </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
	        <button type="button" class="btn btn-primary" id="confirmDeleteButton">Yes, Delete</button>
	      </div>
	    </div>
	  </div>
	</div>
		<!-- Product Delete popup open End-->
		
		
    <!-- Add Product Start -->
	<div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="addProductModalLabel" aria-hidden="true">
	       <div class="modal-dialog">
	           <div class="modal-content">
	               <div class="modal-header">
	                   <h5 class="modal-title" id="addProductModalLabel">Add Product</h5>
	                   <button type="button" class="btn-close" onclick="resetProductForm();" data-bs-dismiss="modal" aria-label="Close"></button>
	               </div>
	               <div class="modal-body">
	                   <div id="errorBoxID" style="display: none;">
	                       <div class="alert alert-danger" role="alert">
	                           <ul id="addProductErrorMessage"></ul>
	                       </div>
	                   </div>
	                   <form id="addProductForm">
	                       <input type="hidden" id="productId" />
	                       <div class="mb-3">
	                           <label for="productName" class="form-label">Product Name</label>
	                           <input type="text" class="form-control" id="productName" maxlength="255" required>
	                       </div>
	                       <div class="mb-3">
	                           <label for="productDescription" class="form-label">Product Description</label>
	                           <textarea class="form-control" id="productDescription" rows="3" maxlength="255" required></textarea>
	                       </div>
						   <div class="mb-3 position-relative">
						       <label for="productPrice" class="form-label">Product Price</label>
						       <div class="input-group">
						           <span class="input-group-text">₹</span>
						           <input type="text" class="form-control" id="productPrice" maxlength="8" required>
						       </div>
						   </div>

	                   </form>
	               </div>
	               <div class="modal-footer">
	                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="resetProductForm();">Close</button>
	                   <button  type="submit" onclick="addProduct(event);" class="btn btn-primary" id="addProductModalButton">Add Product</button>
	               </div>
	           </div>
	       </div>
	   </div>
</body>
</html>			
