<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<style>
	    body {
	        color: black;
	        background-color: #f1f3f5;
	        font-family: 'Arial', sans-serif;
	    }

	    .container {
	        max-width: 1200px;
	        background-color: white;
	        padding: 40px;
	        border-radius: 12px;
	        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
	    }

	    h1 {
	        font-size: 2.5rem;
	        font-weight: 600;
	        color: #343a40;
	        margin-bottom: 30px;
	        text-align: center;
	    }

	    table {
	        margin-top: 20px;
	        border-collapse: collapse;
	        width: 100%;
	    }

	    table th, table td {
	        padding: 12px;
	        text-align: center;
	        border: 1px solid #dee2e6;
	    }

	    table th {
	        background-color: #007bff;
	        color: white;
	        font-size: 1.1rem;
	    }

	    table td {
	        background-color: #f8f9fa;
	    }

	    .btn {
	        font-weight: 600;
	        padding: 8px 16px;
	        border-radius: 5px;
	        font-size: 0.9rem;
	    }

	    .btn-warning {
	        background-color: #ffc107;
	        border-color: #ffc107;
	    }

	    .btn-warning:hover {
	        background-color: #e0a800;
	        border-color: #d39e00;
	    }

	    .btn-danger {
	        background-color: #dc3545;
	        border-color: #dc3545;
	    }

	    .btn-danger:hover {
	        background-color: #c82333;
	        border-color: #bd2130;
	    }

	    .btn-success {
	        background-color: #28a745;
	        border-color: #28a745;
	    }

	    .btn-success:hover {
	        background-color: #218838;
	        border-color: #1e7e34;
	    }

	    .footer {
	        margin-top: 40px;
	        font-size: 0.9rem;
	        text-align: center;
	        color: #6c757d;
	    }

	    .d-flex-tools {
	        justify-content: flex-end;
	        gap: 15px;
	        margin-top: 10px;
	    }

	    .form-control, .form-select {
	        border-radius: 0.5rem;
	        font-size: 0.875rem;
	        width: 200px;
	    }

	    .btn-info, .btn-primary {
	        font-size: 0.875rem;
	        padding: 8px 12px;
	    }

	    .navbar {
	        background-color: transparent;
	        padding: 0.5rem 1rem;
	        font-size: 0.875rem;
	        box-shadow: none;
	    }

	    .navbar-brand {
	        color: black !important;
	        font-weight: bold;
	    }

	    .navbar-nav .nav-link {
	        color: black !important;
	        padding: 0.5rem 1rem;
	    }

	    .navbar-nav .nav-link:hover {
	        color: #007bff !important;
	        background-color: rgba(0, 123, 255, 0.1);
	    }

	    .navbar-toggler-icon {
	        background-color: black;
	    }
	</style>
</head>

<body>

    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">Trig App</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="records">Records</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="container my-5">
        <h1>Edit Trigonometry Calculator Record</h1>

        <form action="update" method="post">
            <input type="hidden" name="_method" value="PUT" />
            <input type="hidden" name="id" value="${record.id}" />

            <div class="mb-3">
                <label for="angle" class="form-label">Angle</label>
                <input type="text" class="form-control" id="angle" name="angle" value="${record.angle}" required>
            </div>

            <div class="mb-3">
                <label for="func" class="form-label">Trigonometry Function</label>
                <select class="form-select" name="func" id="func" required>
                    <option value="sin" ${record.func == 'sin' ? 'selected' : ''}>sin</option>
                    <option value="cos" ${record.func == 'cos' ? 'selected' : ''}>cos</option>
                    <option value="tan" ${record.func == 'tan' ? 'selected' : ''}>tan</option>
                    <option value="sec" ${record.func == 'sec' ? 'selected' : ''}>sec</option>
                    <option value="cosec" ${record.func == 'cosec' ? 'selected' : ''}>cosec</option>
                    <option value="cot" ${record.func == 'cot' ? 'selected' : ''}>cot</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="result" class="form-label">Result</label>
                <input type="text" class="form-control" id="result" name="result" value="${record.result}" required>
            </div>

            <button type="submit" class="btn btn-primary w-100">Update Record</button>
        </form>

        <div class="d-flex justify-content-center mt-4">
            <a href="/" class="btn btn-back">Back to Home</a>
        </div>
    </section>

    <footer class="footer">
        <p>&copy; 2024 Trigonometry Calculator</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz4fnFO9gybpy60kStJ9gfkX8gYcP94k70jWvE5o+J9mNWjHlDg5edT1vH" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-pzjw8f+ua7Kw1TIq0v8FqFy9Bv3f1t2t5TJOj/gI4bU1t7fFkR3QhZy5WfM5nkA6" crossorigin="anonymous"></script>
</body>

</html>
