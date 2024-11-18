<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            max-width: 600px;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        h4 {
            font-size: 2rem;
            font-weight: bold;
            color: #dc3545;
        }

        h6 {
            font-size: 1.2rem;
            color: #6c757d;
        }

        .btn {
            font-weight: 600;
            padding: 10px 20px;
            border-radius: 8px;
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

    </style>
</head>

<body>

    <section class="container my-5 p-4 rounded border border-secondary shadow text-center">
        <h4>Error</h4>
        <h6 class="text-secondary">${error}</h6>
        <a href="/" class="btn btn-success mx-2">Back to Home</a>
    </section>

    <footer class="footer">
        <p>&copy; 2024 Trigonometry Calculator</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybpy60kStJ9gfkX8gYcP94k70jWvE5o+J9mNWjHlDg5edT1vH" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0v8FqFy9Bv3f1t2t5TJOj/gI4bU1t7fFkR3QhZy5WfM5nkA6" crossorigin="anonymous"></script>

</body>

</html>
