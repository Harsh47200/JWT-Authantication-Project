<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="./header.jsp"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${pageHeading}</title>


<!--CSS Start-->
<style>
/* Global Styles */
body {
    font-family: 'Poppins', sans-serif;
    background-color: #f0f0f0;
}

/* Header */
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

/* Floating Elements */
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

/* Button Styles */
.btn-success {
    background-color: #28a745;
    border: none;
    margin-left: 852px;
    height: 39px;
    width: 113px;
    z-index: 1000; /* Ensure the button is above other content */
}

.btn-success:hover {
    background-color: #218838;
}

/* Modal Styles */
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

.modal-body {
    padding: 1.5rem;
    background-color: #ffffff;
}

.modal-footer {
    border-top: 1px solid #e5e5e5;
    background-color: #f7f7f7;
    padding: 1rem;
    border-radius: 0 0 10px 10px;
}

/* Form Controls */
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

/* Button Styles */
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

/* Alert Styles */
.alert {
    margin-bottom: 0;
}

.alert-danger {
    border-radius: 5px;
}

/* Table Styles */
.table th, .table td {
    text-align: center;
}

.table-dark th, .table-dark td {
    color: #fff;
    background-color: #343a40;
}

/* Modal Content */
.modal-content {
    border-radius: 10px;
    border: 1px solid #dee2e6;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

/* Button Hover Effects */
.btn-close {
    filter: brightness(0.6);
}

.btn-close:hover {
    filter: brightness(1);
}

/* Scrolling Text */
.scrolling-text {
    font-size: 2em;
    font-weight: bold;
    color: #ff007f; /* Starting color */
    text-shadow: 2px 2px 4px #000000; /* Shadow effect */
    animation: rainbow 5s linear infinite;
}

/* Rainbow Color Animation */
@keyframes rainbow {
    0% { color: #ff007f; } /* Pink */
    20% { color: #ff8c00; } /* Orange */
    40% { color: #ffd700; } /* Gold */
    60% { color: #32cd32; } /* Lime Green */
    80% { color: #1e90ff; } /* Dodger Blue */
    100% { color: #ff007f; } /* Back to Pink */
}

/* Custom Button Style */
.bt {
    padding: 10px;
    margin: 5px;
    border: 1px solid #ccc;
    background-color: #f8f8f8;
    cursor: pointer;
}

.btn.active {
    background-color: #007bff;
    color: white;
}
/* Header */
.custom-header {
    background: linear-gradient(135deg, #4158D0, #C850C0, #FFCC70);
    padding: 15px 20px;
    color: white;
    animation: headerAnimation 2s ease-in-out infinite; /* Add animation */
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

/* Footer */
.custom-footer {
    background-color: #000; /* Black background */
    color: white;
    padding: 15px 20px;
    text-align: center;
    position: fixed; /* Fix the footer to the bottom */
    bottom: 0; /* Align it to the bottom */
    left: 0;
    width: 100%; /* Full width */
    animation: footerAnimation 2s ease-in-out infinite; /* Add animation */
}

/* Footer links */
.custom-footer a {
    color: white;
    text-decoration: none;
    transition: color 0.3s;
}

.custom-footer a:hover {
    color: #FFCC70; /* Color on hover */
}

/* Header Animation */
@keyframes headerAnimation {
    0% {
        background: linear-gradient(135deg, #4158D0, #C850C0, #FFCC70);
    }
    50% {
        background: linear-gradient(135deg, #C850C0, #FFCC70, #4158D0); /* Swap colors for effect */
    }
    100% {
        background: linear-gradient(135deg, #4158D0, #C850C0, #FFCC70);
    }
}

/* Footer Animation */
@keyframes footerAnimation {
    0% {
        background-color: #000; /* Black background */
    }
    50% {
        background-color: #333; /* Slightly lighter black */
    }
    100% {
        background-color: #000; /* Black background */
    }
}

</style>
<!--CSS End-->
</head>
<script type="text/javascript">

let currentPage = 0;  // Global variable to track the current page
const pageSize = 10;  // Number of records per page
let currentSortBy = 'name'; // Initialize the sorting by the 'name' column.
let currentSortOrder = 'asc'; // Initial sort order is ascending.

function pageloaded() {
    getAllProducts(currentPage, currentSortBy);    
}

document.addEventListener('DOMContentLoaded', () => {
    getAllProducts(currentPage, currentSortBy, currentSortOrder); // Load products when the page is loaded
});

function getAllProducts(page, currentSortBy, currentSortOrder) {
    // Construct the URL with pagination and sorting parameters
    const url = 'http://localhost:8081/allProducts?page=' + page + '&size=' + pageSize + '&sortBy=' + currentSortBy + '&sortorder=' + currentSortOrder;
    const token = localStorage.getItem("jwtToken"); // Get JWT token from local storage

    console.log('Fetching URL:', url); // Log the URL being fetched

    fetch(url, {
        method: 'GET',
        headers: {
            'Authorization': 'Bearer ' + token, // Set authorization header with JWT token
            'Content-Type': 'application/json'
        },
        cache: 'no-store' // Disable caching
    })
    .then(response => {
        if (!response.ok) {
            return response.json().then(err => {
                throw new Error(`Error fetching products: ${err.message || response.statusText}`);
            });
        }
        return response.json(); // Parse JSON response
    })
    .then(data => {
        console.log('Data received for page', page, ':', data); // Log the data received
        if (data.content && data.content.length > 0) {
            displayProducts(data.content); // Display the products
        } else {
            displayNoProductsFound(); // Show message if no products are found
        }
        updatePagination(data.currentPage || page, data.totalPages || 1); // Update pagination controls
    })
    .catch(error => {
        console.error('Error fetching products:', error); // Log any errors
    });
}

function sortTable(sortBy) {
    // Toggle sort order if the same column is clicked, otherwise reset to ascending
    if (currentSortBy === sortBy) {
        currentSortOrder = (currentSortOrder === 'asc') ? 'desc' : 'asc';
    } else {
        currentSortBy = sortBy;
        currentSortOrder = 'asc';
    }

    getAllProducts(0, currentSortBy, currentSortOrder); // Reload products with the new sort order
}

function updatePagination(currentPage, totalPages) {
    console.log("Updating pagination - Current Page:", currentPage, "Total Pages:", totalPages);

    let paginationControls = document.getElementById('paginationControls'); // Get the pagination controls element
    paginationControls.innerHTML = ''; // Clear existing pagination controls

    if (currentPage > 0) {
        let prevButton = document.createElement('button');
        prevButton.innerText = 'Previous'; // Set button text
        prevButton.classList.add('btn'); // Add button class
        prevButton.onclick = () => {
            currentPage--;
            getAllProducts(currentPage, currentSortBy, currentSortOrder); // Fetch previous page
        };
        paginationControls.appendChild(prevButton); // Add button to pagination controls
    }

    for (let i = 0; i < totalPages; i++) {
        let pageButton = document.createElement('button');
        pageButton.innerText = i + 1; // Set button text to page number
        pageButton.classList.add('btn', 'page-btn'); // Add button classes
        if (i === currentPage) {
            pageButton.classList.add('active'); // Highlight active page
        }
        pageButton.onclick = () => {
            currentPage = i;
            getAllProducts(currentPage, currentSortBy, currentSortOrder); // Fetch selected page
        };
        paginationControls.appendChild(pageButton); // Add button to pagination controls
    }

    if (currentPage < totalPages - 1) {
        let nextButton = document.createElement('button');
        nextButton.innerText = 'Next'; // Set button text
        nextButton.classList.add('btn'); // Add button class
        nextButton.onclick = () => {
            currentPage++;
            getAllProducts(currentPage, currentSortBy, currentSortOrder); // Fetch next page
        };
        paginationControls.appendChild(nextButton); // Add button to pagination controls
    }
}

function displayProducts(products) {
    let productTable = document.getElementById('productTable'); // Get the product table element
    productTable.innerHTML = ''; // Clear existing table content

    products.forEach(product => {
        let row = productTable.insertRow(); // Insert a new row into the table

        // Product ID
        row.insertCell(0).innerText = product.productId; // Set ID in the first cell

        // Product Name with three-dot ellipsis and tooltip
        let nameCell = row.insertCell(1);
        nameCell.innerText = product.name;
        nameCell.style.whiteSpace = 'nowrap';
        nameCell.style.overflow = 'hidden';
        nameCell.style.textOverflow = 'ellipsis';
        nameCell.style.wordBreak = 'break-all'; // Handle long words
        nameCell.style.maxWidth = '150px'; // Set a maximum width
        nameCell.title = product.name; // Tooltip for product name

        // Product Description with three-dot ellipsis and tooltip
        let descCell = row.insertCell(2);
        descCell.innerText = product.description;
        descCell.style.whiteSpace = 'nowrap';
        descCell.style.overflow = 'hidden';
        descCell.style.textOverflow = 'ellipsis';
        descCell.style.wordBreak = 'break-all'; // Handle long words
        descCell.style.maxWidth = '300px'; // Set a maximum width
        descCell.title = product.description; // Tooltip for product description

        // Product Price
        let priceValue = parseFloat(product.price);
        if (!isNaN(priceValue)) {
            let formattedPrice = priceValue.toLocaleString('en-IN'); // Format price
            row.insertCell(3).innerHTML = '₹ ' + formattedPrice; // Set price in the fourth cell
        } else {
            row.insertCell(3).innerText = 'Invalid Price'; // Show error if price is invalid
        }

        // Actions (Edit & Delete)
        row.insertCell(4).innerHTML = 
            '<a href="#" onClick="confirmDeleteProduct(' + product.productId + '); return false;" title="Delete Product">' +
            '<i class="fa fa-trash-alt"></i></a> &nbsp; ' +  
            '<a href="#" onClick="editProduct(\'' + product.productId + '\', \'' + escapeQuotes(product.name) + '\', \'' + escapeQuotes(product.description) + '\', ' + product.price + '); return false;" class="ml-10" title="Edit Product">' +
            '<i class="fa fa-edit"></i></a>'; // Add edit and delete actions
    });
}

function displayNoProductsFound() {
    let productTable = document.getElementById('productTable'); // Get the product table element
    productTable.innerHTML = ''; // Clear existing table content
    let row = productTable.insertRow(); // Insert a new row into the table
    let cell = row.insertCell(0);
    cell.colSpan = 5; // Span across all columns
    cell.style.textAlign = 'center'; // Center align the text
    cell.innerText = "No Record Found"; // Display no records message
}

function escapeQuotes(str) {
    return str.replace(/'/g, "\\'"); // Escape single quotes
}

// pagination and list product work start
// delete product work start

var productIdToDelete = null; // Variable to store the product ID to delete

function confirmDeleteProduct(productId) {
    productIdToDelete = productId; // Store the product ID to delete
    var myModal = new bootstrap.Modal(document.getElementById('deleteProductModal'));
    myModal.show(); // Show the confirmation modal
}

function deleteProduct() {
    if (productIdToDelete !== null) {
        fetch('http://localhost:8081/products/' + productIdToDelete, {
            method: 'DELETE',
            headers: {
                'Authorization': 'Bearer ' + localStorage.getItem("jwtToken") // Set authorization header with JWT token
            }
        })
        .then(response => {
            if (!response.ok) {
                return response.text().then(text => {
                    throw new Error(text); // Handle text response
                });
            }
            return response.text(); // Return text response if status is OK
        })
        .then(message => {
            console.log('Product deleted successfully:', message); // Log success message
            getAllProducts(currentPage, currentSortBy, currentSortOrder); // Refresh the product list
            var myModal = bootstrap.Modal.getInstance(document.getElementById('deleteProductModal'));
            myModal.hide(); // Hide the confirmation modal
        })
        .catch(error => {
            console.error('Error deleting product:', error); // Log errors
            document.getElementById('deleteText').innerText = error.message; // Display error message
        });

        productIdToDelete = null; // Reset the product ID to delete
    } else {
        console.warn('No product selected for deletion'); // Log warning if no product is selected
    }
}

//Event listener for the delete confirmation button
document.addEventListener('DOMContentLoaded', function() {
    // Wait for the DOM to fully load
    var confirmDeleteButton = document.getElementById('confirmDeleteButton');
    // Get the confirm delete button element by its ID
    if (confirmDeleteButton) {
        // If the button exists, add a click event listener that calls the deleteProduct function
        confirmDeleteButton.addEventListener('click', deleteProduct);
    } else {
        // Log an error if the confirm delete button is not found
        console.error('Confirm Delete Button not found');
    }
});

// Function to open the add product modal
function openAddProductModal() {
    resetProductForm();  // Reset the form fields to clear any previous data
    var myModal = new bootstrap.Modal(document.getElementById('addProductModal'));  // Create a new Bootstrap modal instance
    myModal.show();  // Show the add product modal
}

// Function to set up the edit product modal
var gproductId = 0; // Global variable to hold the product ID for editing
function editProduct(productId, name, description, price) {
    // Fetch the products to ensure the list is up-to-date
    getAllProducts(currentPage, currentSortBy, currentSortOrder);
    
    gproductId = productId; // Set the global product ID for editing
    var myModal = new bootstrap.Modal(document.getElementById('addProductModal')); // Create a new Bootstrap modal instance
    myModal.show(); // Show the add product modal
    // Fill the form fields with the existing product data for editing
    document.getElementById('productName').value = name;
    document.getElementById('productPrice').value = price;
    document.getElementById('productDescription').value = description;
    // Update the modal title and button text for editing
    document.getElementById('addProductModalLabel').innerHTML = "Edit Product";
    document.getElementById('addProductModalButton').innerHTML = "Update Product";
}

// Function to validate the form fields
function validateForm() {
    var errorMessages = ''; // Initialize a string to collect error messages
    var productName = document.getElementById('productName').value; // Get the product name input value
    var productPrice = document.getElementById('productPrice').value; // Get the product price input value
    var productDescription = document.getElementById('productDescription').value; // Get the product description input value

    // Check if the product name is empty
    if (!productName.trim()) {
        errorMessages += '<li>Product name is required.</li>'; // Add an error message if name is missing
    }
    // Check if the product price is empty
    if (!productPrice.trim()) {
        errorMessages += '<li>Product price is required.</li>'; // Add an error message if price is missing
    } 
    // Check if the product price is a valid number
    if (isNaN(productPrice)) {
        errorMessages += '<li>Product price must be a positive number.</li>'; // Add an error message if price is not a number
    }
    // Check if the product description is empty
    if (!productDescription.trim()) {
        errorMessages += '<li>Product description is required.</li>'; // Add an error message if description is missing
    }

    return errorMessages || null; // Return the error messages or null if there are no errors
}

// Function to reset the product form fields
function resetProductForm() {
    document.getElementById('errorBoxID').style.display = "none"; // Hide the error box
    document.getElementById('addProductErrorMessage').innerHTML = ""; // Clear the error messages
    document.getElementById('addProductModalLabel').innerHTML = "Add Product"; // Set the modal title to "Add Product"
    document.getElementById('addProductModalButton').innerHTML = "Add Product"; // Set the modal button text to "Add Product"
    // Clear the form fields
    document.getElementById('productName').value = "";
    document.getElementById('productPrice').value = "";
    document.getElementById('productDescription').value = "";
    gproductId = 0; // Reset the global product ID
}

// Function to handle adding or updating a product
function addProduct(event) {
    event.preventDefault(); // Prevent the default form submission behavior
    var productId = gproductId; // Get the product ID (0 if adding new product)
    var errorMessages = validateForm(); // Validate the form fields
    if (errorMessages) {
        // If there are validation errors, display them in the error box
        document.getElementById('errorBoxID').style.display = "block";
        document.getElementById('addProductErrorMessage').innerHTML = errorMessages;
        return; // Exit the function if there are errors
    }
    // Get the product details from the form fields
    var productName = document.getElementById('productName').value;
    var productPrice = document.getElementById('productPrice').value;
    var productDescription = document.getElementById('productDescription').value;

    var token = localStorage.getItem('jwtToken'); // Get the JWT token from local storage

    var xhr = new XMLHttpRequest(); // Create a new XMLHttpRequest object
    xhr.open('POST', 'http://localhost:8081/products', true); // Configure the request (POST method to the products endpoint)
    xhr.setRequestHeader('Content-Type', 'application/json'); // Set the content type of the request
    xhr.setRequestHeader('Authorization', 'Bearer ' + token); // Set the authorization header with the JWT token

    xhr.onload = function() {
        // Function to handle the response from the server
        if (xhr.status === 200) {
            // If the request is successful (status code 200)
            resetProductForm(); // Reset the form fields
            var myModal = bootstrap.Modal.getInstance(document.getElementById('addProductModal')); // Get the Bootstrap modal instance
            myModal.hide(); // Hide the modal
            getAllProducts(currentPage, currentSortBy, currentSortOrder); // Reload the product list
        } else if (xhr.status == 403) {
            // If the request fails with status code 403 (Forbidden)
            document.getElementById('errorBoxID').style.display = "block"; // Show the error box
            document.getElementById('addProductErrorMessage').innerHTML = "<li>" + xhr.responseText + "</li>"; // Display the error message
        } else {
            // For other status codes
            document.getElementById('errorBoxID').style.display = "block"; // Show the error box
            document.getElementById('addProductErrorMessage').innerText = '<li>Error: ' + xhr.statusText + "</li>"; // Display the error message
        }
    };

    // Prepare the data to be sent in the request body
    if (productId == 0 || productId == null) {
        // If adding a new product
        var data = JSON.stringify({
            name: productName,
            price: productPrice,
            description: productDescription
        });
    } else {
        // If updating an existing product
        var data = JSON.stringify({
            productId: productId,
            name: productName,
            price: productPrice,
            description: productDescription
        });
    }
    xhr.send(data); // Send the request with the data
}

</script>
<!--Body Part Start-->
<body onload="pageloaded();">

	<!--Header Start-->
	<header class="custom-header">
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"> <i class="fa fa-leaf"></i>
					PRODUCT MANAGEMENT
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"><i class="fa fa-bars"></i></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link active" href="#">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Services</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Contact</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!--Header End-->

	<!--Product List And Role Diplay Start-->
	<div class="container text-center mt-4">
		<marquee behavior="scroll" direction="left">
			<h1 class="scrolling-text">Welcome To Our ${pageHeading}</h1>
		</marquee>
		<div class="d-flex justify-content-between align-items-center mb-4">
			<span>Welcome <b>${userName}</b></span>
			<div>
				<a href="#" onclick="openAddProductModal();" class="btn btn-success">Add
					Product</a>
			</div>
			<a style="color: #212529; border-color: #dc3545;"
				href="${pageContext.request.contextPath}/dashboard-page"
				class="btn btn-outline-light">Logout</a>
		</div>
		<div class="mt-5">
			<table class="table table-striped">
				<thead class="table-dark">
					<tr>
						<th>ID</th>
						<th><a href="#" onclick="sortTable('name')">Name</a></th>
						<th><a href="#" onclick="sortTable('description')">Description</a></th>
						<th>Price</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody id="productTable">
					<!-- Products will be loaded here -->
				</tbody>
			</table>

			<div id="paginationControls"
				class="d-flex justify-content-between mt-3">
				<!-- Pagination buttons will be dynamically added here -->
			</div>
		</div>
	</div>
	<!--Product List And Role Diplay End-->

	<!-- Product Delete popup open Start-->
	<!-- Confirmation Modal -->
	<div class="modal fade" id="deleteProductModal" tabindex="-1"
		aria-labelledby="deleteProductModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteProductModalLabel">Confirm
						Delete</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div id="deleteText" class="alert alert-danger" role="alert">
						Are you sure you want to delete this product?</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary"
						id="confirmDeleteButton">Yes, Delete</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Product Delete popup open End-->


	<!-- Add Product Start -->
	<div class="modal fade" id="addProductModal" tabindex="-1"
		aria-labelledby="addProductModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="addProductModalLabel">Add Product</h5>
					<button type="button" class="btn-close"
						onclick="resetProductForm();" data-bs-dismiss="modal"
						aria-label="Close"></button>
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
							<input type="text" class="form-control" id="productName"
								maxlength="255" required>
						</div>
						<div class="mb-3">
							<label for="productDescription" class="form-label">Product
								Description</label>
							<textarea class="form-control" id="productDescription" rows="3"
								maxlength="255" required></textarea>
						</div>
						<div class="mb-3 position-relative">
							<label for="productPrice" class="form-label">Product
								Price</label>
							<div class="input-group">
								<span class="input-group-text">₹</span> <input type="text"
									class="form-control" id="productPrice" maxlength="8" required>
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal" onclick="resetProductForm();">Close</button>
					<button type="submit" onclick="addProduct(event);"
						class="btn btn-primary" id="addProductModalButton">Add
						Product</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer Start -->
<footer class="custom-footer">
    <p>&copy; 2024 Your Company. All rights reserved.</p>
    <p>
        <a href="#">Privacy Policy</a> | 
        <a href="#">Terms of Service</a>
    </p>
</footer>
<!-- Footer End -->
	
</body>
</html>
